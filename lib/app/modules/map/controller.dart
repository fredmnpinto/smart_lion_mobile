import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_android/geolocator_android.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';

import '../../data/repository/oil_bin.dart';

class MapPageController extends GetxController {
  final OilBinRepository repository;

  MapPageController({required this.repository});

  final _userLocation = LatLng(0, 0).obs;
  final _oilBins = <OilBinModel>[].obs;

  get userLocation => this._userLocation.value;
  set userLocation(value) => this._userLocation.value = value;
  get oilBins => this._oilBins.value;
  set oilBins(value) => this._oilBins.value = value;

  getCurrentLocation() {
    _determinePosition().then((Position position) { 
      this.userLocation = LatLng(position.latitude, position.longitude); 
    });
  }

  getAllOilBins() {
    repository.getAll().then((List<OilBinModel> list) {
      this.oilBins = list;
    });
  }

  List<Marker> getAllMarkers() {
    List<Marker> markerList = <Marker>[];

    for(OilBinModel oilBin in oilBins) {
      Marker marker = Marker(
        width: 80.0,
        height: 80.0,
        point: LatLng(oilBin.coordinates.x, oilBin.coordinates.y),
          builder: (ctx) =>
            Image.asset(
                  "assets/images/oau_marker.png",
                  scale: 3,
            ),
      );

      markerList.add(marker);
    }
    
    return markerList;
  }

/// Determine the current position of the device.
///
/// When the location services are not enabled or permissions
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the 
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale 
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }
  
  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately. 
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  } 

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
  }
}
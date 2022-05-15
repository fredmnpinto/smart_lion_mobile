import 'package:flutter_map/flutter_map.dart';
import 'package:smart_lion_mobile/app/data/models/oil_bin.dart';
import 'controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';


class MapPage extends GetView<MapPageController> {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<MapPageController>(
      initState: (state) { 
        Get.find<MapPageController>().getCurrentLocation();
        Get.find<MapPageController>().getAllOilBins();
      },
      builder: (_) { 
        return  
          (_.userLocation.latitude == 0 && _.userLocation.longitude == 0) ? 
              Center(child: CircularProgressIndicator(),)
              :
              FlutterMap(
          options: MapOptions(
            center: _.userLocation,
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']
            ),
            MarkerLayerOptions(
              markers: _.getAllMarkers(),
              ),
            ],
          );
      },
    );
  }
}
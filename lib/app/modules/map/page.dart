import 'package:flutter_map/flutter_map.dart';
import 'package:smart_lion_mobile/app/modules/widgets/bottom_navbar.dart';
import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
        return Scaffold(
          body: (_.userLocation.latitude == 0 && _.userLocation.longitude == 0) ? 
          const Center(child: CircularProgressIndicator(),)
          :
          // Mapa
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

              // Marcadores
              MarkerLayerOptions(
                markers: _.getAllMarkers(),
              ),
            ],
          ),
          
          bottomNavigationBar: BottomNavBar(),
        );
      },
    );
  }
}
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/repository/oil_bin.dart';

import '../../data/providers/oil_bin.dart';
import 'controller.dart';
import 'package:http/http.dart' as http;

class MapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapPageController>(() {
      return MapPageController(repository: 
          OilBinRepository(api: OilBinProvider(httpClient: http.Client())
        ));
    });
  } 
}
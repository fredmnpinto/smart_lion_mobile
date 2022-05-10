import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/providers/bottle.dart';
import 'package:smart_lion_mobile/app/data/repository/bottle.dart';

import 'controller.dart';
import 'package:http/http.dart' as http;

class QRScannerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRScannerController>(() {
      return QRScannerController(
        repository: 
          BottleRepository(apiBottle: BottleProvider(httpClient: http.Client())
        )
      );
    });
  }
}
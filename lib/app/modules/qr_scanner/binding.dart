import 'package:get/get.dart';

import 'controller.dart';

class QRScannerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRScannerController>(() {
      return QRScannerController();
    });
  }
}
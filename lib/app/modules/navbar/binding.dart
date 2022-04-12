import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';

class NavBarBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavBarController>(() {
      return NavBarController();
    });
  }
}
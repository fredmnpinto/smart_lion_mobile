import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/home/controller.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';

class HomePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomePageController>(() {
      return HomePageController();
    });
    Get.lazyPut<NavBarController>(() {
      return NavBarController();
    });
  } 
}
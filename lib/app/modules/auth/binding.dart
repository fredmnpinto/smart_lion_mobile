import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() {
      return AuthController();
    });
  }

}
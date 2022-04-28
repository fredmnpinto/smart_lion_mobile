import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/controller.dart';

class UserProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserProfileController>(() {
      return UserProfileController();
    });
  }
}
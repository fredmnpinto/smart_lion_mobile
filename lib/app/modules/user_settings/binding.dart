import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/controller.dart';

class UserSettingsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserSettingsController>(() {
      return UserSettingsController();
    });
  }
}
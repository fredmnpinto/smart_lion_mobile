import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/providers/user.dart';
import 'package:smart_lion_mobile/app/data/repository/user.dart';

import 'package:http/http.dart' as http;

import 'controller.dart';

class RegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterController>(() {
      return RegisterController(
        repository: 
          UserRepository(apiUser: UserProvider(httpClient: http.Client()))
      );
    });
  }

}
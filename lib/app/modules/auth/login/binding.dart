import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/providers/user.dart';
import 'package:smart_lion_mobile/app/data/repository/user.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';

import 'package:http/http.dart' as http;

import 'controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() {
      return LoginController(
        repository: 
          UserRepository(apiUser: UserProvider(httpClient: http.Client()))
      );
    });
  }

}
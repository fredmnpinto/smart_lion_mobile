import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/providers/user.dart';
import 'package:smart_lion_mobile/app/data/repository/user.dart';
import 'package:smart_lion_mobile/app/modules/auth/controller.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';

import 'package:http/http.dart' as http;

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() {
      return AuthController(
        repository: 
          UserRepository(apiUser: UserProvider(httpClient: http.Client()))
      );
    });
  }

}
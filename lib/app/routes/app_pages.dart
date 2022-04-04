import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/binding.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/login/page.dart';

import '../data/modules/auth/register/page.dart';
import '../data/modules/home/page.dart';
import 'app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> const MyHomePage(title: 'Teste',), binding: null),
    GetPage(name: Routes.LOGIN, page:()=> const LoginPage(), binding: AuthBinding()),
    GetPage(name: Routes.REGISTER, page:()=> const RegisterPage(), binding: AuthBinding()),
  ];
}
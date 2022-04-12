import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/binding.dart';
import 'package:smart_lion_mobile/app/modules/auth/login/page.dart';
import 'package:smart_lion_mobile/app/modules/navbar/binding.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/page.dart';

import '../modules/auth/register/page.dart';
import '../modules/home/page.dart';
import 'app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> const HomePage(), binding: NavBarBinding()),
    GetPage(name: Routes.LOGIN, page:()=> const LoginPage(), binding: AuthBinding()),
    GetPage(name: Routes.REGISTER, page:()=> const RegisterPage(), binding: AuthBinding()),
    GetPage(name: Routes.USERPROFILE, page:()=> const UserProfilePage(), binding: UserProfileBinding()),
  ];
}
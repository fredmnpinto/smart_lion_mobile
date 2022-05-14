import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/binding.dart';
import 'package:smart_lion_mobile/app/modules/auth/login/page.dart';
import 'package:smart_lion_mobile/app/modules/home/binding.dart';
import 'package:smart_lion_mobile/app/modules/navbar/binding.dart';
import 'package:smart_lion_mobile/app/modules/navbar/controller.dart';
import 'package:smart_lion_mobile/app/modules/qr_scanner/binding.dart';
import 'package:smart_lion_mobile/app/modules/qr_scanner/page.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/page.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/page.dart';

import '../modules/auth/register/page.dart';
import '../modules/home/page.dart';
import 'app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> const HomePage(), binding: HomePageBinding()),
    GetPage(name: Routes.LOGIN, page:()=> const LoginPage(), binding: AuthBinding()),
    GetPage(name: Routes.REGISTER, page:()=> const RegisterPage(), binding: AuthBinding()),
    GetPage(name: Routes.USERPROFILE, page:()=> const UserProfilePage(), binding: UserProfileBinding()),
    GetPage(name: Routes.USERSETTINGS, page:()=> const UserSettingsPage(), binding: UserSettingsBinding()),
    GetPage(name: Routes.QRSCANNER, page:()=> const QRScannerPage(), binding: QRScannerBinding()),
  ];
}
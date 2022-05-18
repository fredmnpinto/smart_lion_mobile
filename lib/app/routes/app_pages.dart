import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/login/page.dart';
import 'package:smart_lion_mobile/app/modules/home/binding.dart';
import 'package:smart_lion_mobile/app/modules/map/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/page.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/binding.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/page.dart';

import '../modules/auth/login/binding.dart';
import '../modules/auth/register/binding.dart';
import '../modules/auth/register/page.dart';
import '../modules/deposit/binding.dart';
import '../modules/deposit/confirm_deposit/page.dart';
import '../modules/deposit/qr_scanner/page.dart';
import '../modules/deposit/search_locations/page.dart';
import '../modules/home/page.dart';
import '../modules/map/page.dart';
import 'app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> const HomePage(), binding: HomePageBinding()),
    GetPage(name: Routes.LOGIN, page:()=> const LoginPage(), binding: LoginBinding()),
    GetPage(name: Routes.REGISTER, page:()=> const RegisterPage(), binding: RegisterBinding()),
    GetPage(name: Routes.USERPROFILE, page:()=> const UserProfilePage(), binding: UserProfileBinding()),
    GetPage(name: Routes.USERSETTINGS, page:()=> const UserSettingsPage(), binding: UserSettingsBinding()),
    GetPage(name: Routes.QRSCANNER, page:()=> const QRScannerPage(), binding: DepositBinding()),
    GetPage(name: Routes.SEARCHLOCATIONS, page:()=> const SearchLocationsPage(), binding: DepositBinding()),
    GetPage(name: Routes.MAP, page:()=> const MapPage(), binding: MapBinding()),
    GetPage(name: Routes.CONFIRMDEPOSIT, page:()=> const ConfirmDepositPage(), binding: DepositBinding()),
  ];
}
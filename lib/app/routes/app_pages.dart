import 'package:get/get.dart';

import '../data/modules/home/page.dart';
import 'app_routes.dart';

abstract class AppPages {

  static final pages = [
    GetPage(name: Routes.HOME, page:()=> const MyHomePage(title: 'Teste',), binding: null),
  ];
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/routes/app_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:smart_lion_mobile/app/theme/appTheme.dart';
import 'app/modules/auth/login/binding.dart';
import 'app/routes/app_routes.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme:  appThemeData,
      initialRoute: Routes.LOGIN,
      initialBinding: LoginBinding(),
      getPages: AppPages.pages,
    );
  }
}

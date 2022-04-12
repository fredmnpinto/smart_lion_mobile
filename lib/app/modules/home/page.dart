import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/home/controller.dart';
import 'package:smart_lion_mobile/app/modules/navbar/page.dart';

import '../../routes/app_routes.dart';

class HomePage extends GetView<HomePageController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
    );
  } 
}

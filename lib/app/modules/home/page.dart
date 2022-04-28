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
      drawer: const NavBar(),
      body: Center(child: Column(
        children: const [
          Spacer(flex: 1,),
          Text("Slide to the right to see something cool"),
          Icon(Icons.arrow_right_alt_rounded),
          Spacer(flex: 1,)
        ],
      )),
    );
  } 
}

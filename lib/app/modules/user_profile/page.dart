

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

import '../widgets/bottom_navbar.dart';
import 'controller.dart';
import 'widgets/user_avatar.dart';
import 'widgets/user_profile_view.dart';

class UserProfilePage extends GetView<UserProfileController> {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Botão para opções
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () { Get.toNamed(Routes.USERSETTINGS); },
              child: const Icon(Icons.settings),
            )
          ), 
        ]
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: UserAvatar(controller: controller)),
          Expanded(flex: 3, child: UserProfileView(controller: controller)),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
  
}
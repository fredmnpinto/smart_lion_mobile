import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/controller.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

import 'controller.dart';

class NavBar extends GetView<NavBarController> {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(controller.userName),
            accountEmail: Text(controller.userEmail),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  // Se a foto não existir ele coloca uma foto padrão de um avatar
                  controller.userPhotoURL ?? "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png",
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => Get.toNamed(Routes.USERPROFILE),
          ),
          ListTile(
            leading: const Icon(Icons.map),
            title: const Text('Map'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.qr_code_scanner),
            title: const Text('QR-Scanner'),
            onTap: () => Get.toNamed(Routes.QRSCANNER),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Get.toNamed(Routes.USERSETTINGS),
          ),
          const Divider(),
          ListTile(
            title: const Text('Exit'),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
        ],
      )
    );
  }

}
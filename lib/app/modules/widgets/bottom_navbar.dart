import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class BottomNavBar extends Container {
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon:  IconButton (
            onPressed: () { Get.toNamed(Routes.USERPROFILE); }, 
            icon: const Icon(Icons.person),
          ),
          label: "Profile"
        ),
        BottomNavigationBarItem(
          icon:  IconButton (
            onPressed: () { Get.toNamed(Routes.MAP); }, 
            icon: const Icon(Icons.map),
          ),
          label: "Map"
        ),
        BottomNavigationBarItem(
          icon:  IconButton (
            onPressed: () { Get.toNamed(Routes.QRSCANNER); }, 
            icon: const Icon(Icons.qr_code),
          ),
          label: "Deposit"
        ),
      ],
    );
  }
}
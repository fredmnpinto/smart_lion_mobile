import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class BottomNavBar extends Container {
  final int currentIdx;

  BottomNavBar({required this.currentIdx});

  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Theme.of(context).primaryColor,
      currentIndex: currentIdx,
      items: [
        BottomNavigationBarItem(
          icon: IconButton (
            onPressed: () { Get.offAndToNamed(Routes.USERPROFILE); }, 
            icon: const Icon(Icons.person),
          ),
          label: "Profile"
        ),
        BottomNavigationBarItem(
          icon: IconButton (
            onPressed: () { Get.offAndToNamed(Routes.MAP); }, 
            icon: const Icon(Icons.map),
          ),
          label: "Map"
        ),
        BottomNavigationBarItem(
          icon: IconButton (
            onPressed: () { Get.offAndToNamed(Routes.QRSCANNER); }, 
            icon: const Icon(Icons.qr_code),
          ),
          label: "Deposit"
        ),
      ],
    );
  }
}
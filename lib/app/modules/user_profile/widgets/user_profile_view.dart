import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  final UserProfileController controller;

  const UserProfileView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      child: Column(
        children: [
          const SizedBox(height: 10), //Para simular um margin top
          Center(
            child: Text(
              controller.userName,
            ),
          ),
          const SizedBox(height: 10), //Para simular um margin top
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "0\nPontos",
                textAlign: TextAlign.center,
                ),
                Text(
                  "0\nDepositos",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const SizedBox(height: 10), //Para simular um margin top
        ]
      )
    );
  }
  
}
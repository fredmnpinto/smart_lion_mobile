

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
import 'widgets/user_avatar.dart';
import 'widgets/user_profile_view.dart';

class UserProfilePage extends GetView<UserProfileController> {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          Expanded(flex: 1, child: UserAvatar(controller: controller)),
          Expanded(flex: 3, child: UserProfileView(controller: controller)),
        ],
      ),
    );
  }
  
}
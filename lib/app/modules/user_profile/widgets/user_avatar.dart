import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/controller.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';
import 'package:smart_lion_mobile/app/theme/appTheme.dart';

import '../controller.dart';

class UserAvatar extends StatelessWidget {
  final UserProfileController controller;

  const UserAvatar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.fitWidth,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(40, 15, 40, 0),
              child: ClipOval(
                child: Image(
                  image: NetworkImage(
                    // Se a foto não existir ele coloca uma foto padrão de um avatar
                    controller.userPhotoURL ?? "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png",
                  ),
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_lion_mobile/app/modules/navbar/page.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/controller.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class UserProfilePage extends GetView<UserProfileController> {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          FittedBox(
            fit: BoxFit.fitWidth,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10), //Para simular um margin top
                  IconButton(
                    icon: Icon(
                      Icons.arrow_back_sharp,
                    ),
                    alignment: Alignment.topLeft,
                    iconSize: 16,
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    tooltip: "Go back",
                    onPressed: () => Get.toNamed(Routes.HOME),
                  ),
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
            ),
          ),     
          SizedBox(height: 10), //Para simular um margin top
          Center(
              child: Text(
              controller.userName,
              style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 10), //Para simular um margin top
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "0\nPontos",
                  textAlign: TextAlign.center,
                  style: const TextStyle(    
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "0\nDepositos",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  )
                ),
              ],
            ),
          ),
          SizedBox(height: 10), //Para simular um margin top
        ],
      ),
    );
  }
  
}
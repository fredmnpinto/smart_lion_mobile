import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/controller.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';
import 'package:smart_lion_mobile/app/theme/appTheme.dart';

class UserAvatar extends StatelessWidget {
  final UserSettingsController controller;

  const UserAvatar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
      decoration: BoxDecoration(color: Theme.of(context).primaryColor),
      child: Material(
        color: Colors.blue,
        elevation: 8,
        shape: const CircleBorder(),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        // Para fazer efeito de "toque"
        child: InkWell(
          // Para fazer efeito que icone fica por cima da foto
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Image de Ava
              Ink.image(
                image: NetworkImage(
                  // Se a foto não existir ele coloca uma foto padrão de um avatar
                  controller.userPhotoURL ?? "https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png",
                ),
                fit: BoxFit.contain,
                //height: 40,
                //width: 40,
              ),
                      
              // Icone por "cima" do Ava
              const Icon(
                Icons.camera_alt,
                //size: 10,
                color: Colors.white,
              ),
            ],
          ),
          onTap: () {controller.getFromGallery();},
        ))
    );
  }
  
}
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_lion_mobile/app/modules/navbar/page.dart';
import 'package:smart_lion_mobile/app/modules/user_profile/controller.dart';

class UserProfilePage extends GetView<UserProfileController> {
  const UserProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: Center(
        child: Text("Bem-Vindo!"),
      ),
    );
  }
  
}
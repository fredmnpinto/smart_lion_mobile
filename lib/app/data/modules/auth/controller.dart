import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../routes/app_routes.dart';

class AuthController extends GetxController {
  final registerFormKey = GlobalKey<FormState>();
  final loginFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final displayNameController = TextEditingController();

  void login() async {
    if (!loginFormKey.currentState!.validate()) {
      return;
    }

    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: emailController.text, password: passwordController.text);
      onSuccess();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error on login", e.message!);
    }
  }

  void register() async {
    if (!registerFormKey.currentState!.validate()) {
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      await FirebaseAuth.instance.currentUser!
          .updateDisplayName(displayNameController.text);
      onSuccess();
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error during registration", e.message!);
    }
  }

  void onSuccess() {
    Get.snackbar("Success",
        "You are logged in, ${FirebaseAuth.instance.currentUser!.displayName}!");
    Get.offAndToNamed(Routes.HOME);
  }
}

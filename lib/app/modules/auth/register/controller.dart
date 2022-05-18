import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smart_lion_mobile/app/data/providers/user.dart';
import 'package:smart_lion_mobile/app/data/repository/user.dart';

import '../../../data/models/user.dart';
import '../../../routes/app_routes.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final displayNameController = TextEditingController();

   //repository required
  final UserRepository repository;
  
  RegisterController({required this.repository});

  /// The same as the login() method but for the
  /// register submission so it also takes in the
  /// displayName TextEditingController to get the
  /// input.
  Future<void> register() async {
    if (!registerFormKey.currentState!.validate()) {
      return;
    }

    try {
      // Cria no Firebase
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);
      await FirebaseAuth.instance.currentUser!.updateDisplayName(displayNameController.text);
      onSuccess();

      // Cria uma referencia na nossa API
      UserModel user = new UserModel(userTypeId: 1,  firebaseUid: FirebaseAuth.instance.currentUser!.uid);
      repository.apiUser.add(user);
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error during registration", e.message!);
    }
  }

  /// Called on both login() and register() after a
  /// successful authentication.
  ///
  /// Will display a message of success which is not
  /// the most appealing UI neither is it the best
  /// UX but it does it's job for the time being.
  void onSuccess() {
    Get.snackbar("Success",
        "You are logged in, ${FirebaseAuth.instance.currentUser!.displayName}!");
    Get.offAndToNamed(Routes.HOME);
  }
}

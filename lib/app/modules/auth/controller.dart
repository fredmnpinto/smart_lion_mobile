import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../routes/app_routes.dart';

class AuthController extends GetxController {
  final registerFormKey = GlobalKey<FormState>();
  final loginFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final displayNameController = TextEditingController();

  /// Basically the handler for the form submission on Login page
  ///
  /// Does not take in any arguments which I don't like very much
  /// but is the simpler way to do it. It uses the values of the
  /// TextEditingControllers to get the email and password.
  void login() async {
    /* Validates the form through the validator methods on
    * all FormFields within the form */
    if (!loginFormKey.currentState!.validate()) {
      return;
    }

    /* Try to login */
    try {
      /* With this we get the FirebaseAuth singleton and through that
      * we call the methods we want. */
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(
          email: emailController.text, password: passwordController.text);
      onSuccess();
      /* Login failed on the Firebase server side */
    } on FirebaseAuthException catch (e) {
      Get.snackbar("Error on login", e.message!);
    }
  }

  /// The same as the login() method but for the
  /// register submission so it also takes in the
  /// displayName TextEditingController to get the
  /// input.
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

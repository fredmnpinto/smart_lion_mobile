import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_lion_mobile/firebase_options.dart';

import 'package:smart_lion_mobile/main.dart';
import 'package:smart_lion_mobile/app/modules/auth/controller.dart';

void main() {
  test("Register test", () async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    final authController = AuthController();

    const mockEmail = "example@gmail.com";
    const mockDisplayName = "Example Person";
    const mockPassword = "3x4mpl3";

    authController.emailController.text = mockEmail;
    authController.displayNameController.text = mockDisplayName;
    authController.passwordController.text = mockPassword;

    await authController.login();
    final user = FirebaseAuth.instance.currentUser;

    expect(user, isNot(null));

    if (user != null) {
      expect(user.email, mockEmail);
      expect(user.displayName, mockDisplayName);

      user.delete();
    }
  });

  test("Test login", () async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    /* Setup the environment */
    final authController = AuthController();

    const mockEmail = "example@gmail.com";
    const mockDisplayName = "Example Person";
    const mockPassword = "3x4mpl3";

    authController.emailController.text = mockEmail;
    authController.displayNameController.text = mockDisplayName;
    authController.passwordController.text = mockPassword;

    /* Assert the test user exists */
    await authController.register();

    /* Asserts the user is not logged in */
    await authController.logout();

    /* Try to login */
    await authController.login();

    /* Guarantees the login was successful */
    final user = FirebaseAuth.instance.currentUser;
    expect(user, isNot(null));

    if (user != null) {
      expect(user.email, mockEmail);
      expect(user.displayName, mockDisplayName);

      user.delete();
    }
  });
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/password_input.dart';
import 'package:smart_lion_mobile/app/theme/appTheme.dart';

import '../../../routes/app_routes.dart';
import 'controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double separatorHeight = 15;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Form(
          key: controller.loginFormKey,
          child: Padding( 
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const Spacer(flex: 1),
                  const SizedBox(height: separatorHeight),
                  // Logo
                  Image.asset(
                    "assets/images/smart-lion.jpg",
                    scale: 3,
                  ),
                  // Inputs
                  const SizedBox(height: separatorHeight),
                  EmailInputField(inputController: controller.emailController),
                  const SizedBox(height: separatorHeight),
                  PasswordInputField(inputController: controller.passwordController),
                  const SizedBox(height: separatorHeight),

                  ElevatedButton(
                    style: Theme.of(context).elevatedButtonTheme.style,
                    onPressed: controller.login, 
                    child: const Text("Login")
                  ),

                  const Spacer(),

                  TextButton(
                    style: Theme.of(context).textButtonTheme.style,
                    onPressed: () { Get.toNamed(Routes.REGISTER); },
                    child: const Text("Don't have an account? Sign up"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
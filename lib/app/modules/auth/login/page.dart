import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/controller.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/password_input.dart';

import '../../../routes/app_routes.dart';

class LoginPage extends GetView<AuthController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Smartlion - Login')),
      body: Center(
        child: Form(
          key: controller.loginFormKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  Image.asset(
                    "assets/images/smart-lion.jpg",
                    scale: 3,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  EmailInputField(inputController: controller.emailController),
                  const SizedBox(height: 15),
                  PasswordInputField(inputController: controller.passwordController),
                  const SizedBox(height: 15),
                  TextButton(onPressed: () { Get.toNamed(Routes.REGISTER); }, child: const Text("Sign Up")),


                  const Spacer(),
                  ElevatedButton(
                    onPressed: controller.login,
                    child: const Text("Login"),
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
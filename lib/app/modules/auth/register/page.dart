import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/controller.dart';
import 'package:smart_lion_mobile/app/modules/widgets/display_name_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/password_input.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double separatorHeight = 15;

    return Scaffold(
      appBar: AppBar(title: const Text('Smartlion - Registration')),
      body: Center(
        child: Form(
          key: controller.registerFormKey,
          child: Center(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: separatorHeight,
                        ),
                        Image.asset(
                          "assets/images/smart-lion.jpg",
                          scale: 3,
                        ),
                        const SizedBox(
                          height: separatorHeight,
                        ),
                        EmailInputField(
                            inputController: controller.emailController),
                        const SizedBox(height: separatorHeight),
                        DisplayNameInputField(
                            inputController: controller.displayNameController, 
                        ),
                        const SizedBox(height: separatorHeight),
                        PasswordInputField(
                            inputController: controller.passwordController),
                        const SizedBox(height: separatorHeight),
                        PasswordConfirmInputField(
                            primaryPasswordController:
                                controller.passwordController),
                        const SizedBox(
                          height: 5 * separatorHeight,
                        ),
                        ElevatedButton(
                          onPressed: controller.register,
                          child: const Text("Register"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

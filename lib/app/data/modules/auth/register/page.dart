import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/controller.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/widgets/display_name_input.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/data/modules/auth/widgets/password_input.dart';

class RegisterPage extends GetView<AuthController> {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double separatorHeight = 15;

    return Scaffold(
      appBar: AppBar(title: const Text('My Page')),
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
                        EmailInputField(inputController: controller.emailController),
                        const SizedBox(height: separatorHeight),
                        DisplayNameInputField(inputController: controller.displayNameController),
                        const SizedBox(height: separatorHeight),
                        PasswordInputField(
                            inputController: controller.passwordController),
                        const Spacer(),
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

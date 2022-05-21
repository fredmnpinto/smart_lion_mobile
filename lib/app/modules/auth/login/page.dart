import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/modules/auth/login/widgets/grow_animation.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/auth/login/widgets/fade_animation.dart';
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
              child: FadeAnimation(widget_child: Column(
                children: [
                  const Spacer(flex: 1),
                  const SizedBox(height: separatorHeight),
                  // Logo 
                  GrowAnimation(widget_child: 
                    Image.asset(
                      "assets/images/smart-lion.jpg",
                      scale: 3,
                    ),
                  ),
              
                  // Inputs
                  const SizedBox(height: separatorHeight),
                  EmailInputField(inputController: controller.emailController),
                  const SizedBox(height: separatorHeight),
                  PasswordInputField(inputController: controller.passwordController),
                  const SizedBox(height: separatorHeight),

                  ElevatedButton(
                    onPressed: controller.login, 
                    child: const Text("Login")
                  ),

                  const Spacer(),

                  TextButton(
                    onPressed: () { Get.offAndToNamed(Routes.REGISTER); },
                    child: const Text("Don't have an account? Sign up"),
                  ),
                  
                ],
              ),),
            ),
          ),
        ),
      ),
    );
  }


}
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/controller.dart';
import 'package:smart_lion_mobile/app/modules/widgets/display_name_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/password_input.dart';

class InputsForm extends StatelessWidget {
  final UserSettingsController controller;

  const InputsForm({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.userSettingsFormKey,     
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          children: [
            SizedBox(height: 40),
            DisplayNameInputField(inputController: controller.displayNameController, /*initialValue: controller.userName*/),
            SizedBox(height: 10), //Para simular um margin top
            EmailInputField(inputController: controller.emailController, /*initialValue: controller.userEmail*/),
            SizedBox(height: 10), //Para simular um margin top
            PasswordInputField(inputController: controller.passwordController),
            SizedBox(height: 10), //Para simular um margin top
            ElevatedButton(
              onPressed: controller.saveSettings,
              child: const Text("Save Settings"),
            ),
          ],
        ),
      ),
    );
  }
  
}
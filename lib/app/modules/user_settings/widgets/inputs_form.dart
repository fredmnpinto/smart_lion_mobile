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
      key: GlobalKey<FormState>(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              // Input Fields
              const SizedBox(height: 40),
              DisplayNameInputField(inputController: controller.displayNameController),
              const SizedBox(height: 10), //Para simular um margin top
              EmailInputField(inputController: controller.emailController),
              const SizedBox(height: 10), //Para simular um margin top
              PasswordInputField(inputController: controller.passwordController),
              const Spacer(),
              
              ElevatedButton(
                onPressed: controller.saveSettings,
                child: const Text("SAVE SETTINGS"),
              ),
              
              const SizedBox(height: 20), //Para simular um margin bottom
            ],
          ),
        ),
      )
    );
  }
  
}
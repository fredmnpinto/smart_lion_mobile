import 'package:flutter/material.dart';
import 'package:smart_lion_mobile/app/data/error_messages.dart';

class PasswordInputField extends Container {
  final TextEditingController inputController;

  PasswordInputField({Key? key, required this.inputController}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
    controller: inputController,
    validator: (str) {
      if (str == null || str.isEmpty) {
        return ErrorMessage.emptyField;
      }

      if (str.length < 7) {
        return ErrorMessage.fieldTooShort;
      }

      return null;
    },
    obscureText: true,
    // Para prevenir que o dispositivo revele parte da password
    enableSuggestions: false,
    autocorrect: false,
    textInputAction: TextInputAction.next,
    decoration: const InputDecoration(
      labelText: "Password",
      suffix: Icon(Icons.password),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.visiblePassword,
  );
}

class PasswordConfirmInputField extends Container {
  final TextEditingController primaryPasswordController;

  PasswordConfirmInputField({Key? key, required this.primaryPasswordController}) : super(key: key);

  @override
  Widget build(BuildContext context) => TextFormField(
    validator: (str) {
      if (str == null || str.isEmpty) {
        return ErrorMessage.emptyField;
      }

      if (str != primaryPasswordController.text) {
        return ErrorMessage.differentConfirm;
      }

      return null;
    },
    textInputAction: TextInputAction.done,
    decoration: const InputDecoration(
      labelText: "Password",
      suffix: Icon(Icons.password),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.visiblePassword,
  );
}
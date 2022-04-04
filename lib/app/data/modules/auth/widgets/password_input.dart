import 'package:flutter/cupertino.dart';
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
    textInputAction: TextInputAction.done,
    decoration: const InputDecoration(
      labelText: "Password",
      suffix: Icon(Icons.password),
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.visiblePassword,
  );
}
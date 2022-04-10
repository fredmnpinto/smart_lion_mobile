import 'package:flutter/material.dart';
import 'package:smart_lion_mobile/app/data/error_messages.dart';

class EmailInputField extends Container {
  final TextEditingController inputController;
  
  EmailInputField({Key? key, required this.inputController}) : super(key: key);
  
  @override
  Widget build(BuildContext context) => TextFormField(
    controller: inputController,
    validator: (str) {
      if (str == null || str.isEmpty) {
        return ErrorMessage.emptyField;
      }

      if (!str.contains("@")) {
        return ErrorMessage.invalidEmail;
      }

      return null;
    },
    textInputAction: TextInputAction.next,
    decoration: const InputDecoration(
      labelText: "Email",
      suffix: Icon(Icons.person),
      border: OutlineInputBorder(),
    ),
  );
}
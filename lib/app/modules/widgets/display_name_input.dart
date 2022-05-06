import 'package:flutter/material.dart';
import 'package:smart_lion_mobile/app/data/error_messages.dart';

class DisplayNameInputField extends Container {
  final TextEditingController inputController;

  DisplayNameInputField({Key? key, required this.inputController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: inputController,
      validator: (str) {
        if (str == null || str.isEmpty) {
          return ErrorMessage.emptyField;
        }

        if (str.length < 2) {
          return ErrorMessage.fieldTooShort;
        }

        return null;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        labelText: "Your Name",
        suffix: Icon(Icons.person),
        border: OutlineInputBorder(),
      ),
    );
  }
}

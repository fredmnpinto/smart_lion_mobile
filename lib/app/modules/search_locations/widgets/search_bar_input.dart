import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_lion_mobile/app/data/error_messages.dart';
import 'package:smart_lion_mobile/app/modules/qr_scanner/controller.dart';

import '../controller.dart';

class SearchBarInputField extends Container {
  final SearchLocationsController controller;

  SearchBarInputField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: controller.searchBarController,
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
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                        ),
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18
                        ),
                        prefixIcon: Container(
                          padding: EdgeInsets.all(15),
                          child: Icon(Icons.search),
                          width: 18,
                        )
                      ),
                      onChanged: (text) => controller.searchOilBins(text),
    );
  }
}

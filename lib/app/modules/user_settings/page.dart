import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/widgets/inputs_form.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/widgets/user_avatar.dart';
import 'package:smart_lion_mobile/app/modules/widgets/display_name_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/email_input.dart';
import 'package:smart_lion_mobile/app/modules/widgets/password_input.dart';
import 'package:smart_lion_mobile/app/modules/user_settings/controller.dart';
import 'package:smart_lion_mobile/app/routes/app_routes.dart';

class UserSettingsPage extends GetView<UserSettingsController> {
  const UserSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor, 
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAvatar(controller: controller,),
          InputsForm(controller: controller,),
        ],
      ),      
    );
  }
  
}
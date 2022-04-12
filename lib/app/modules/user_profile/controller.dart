import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController {

  String getUserName() {
    return FirebaseAuth.instance.currentUser!.displayName ?? "Anonymous";
  }
}
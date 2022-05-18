import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController {
  final _userName = FirebaseAuth.instance.currentUser!.displayName.obs;
  final _userEmail = FirebaseAuth.instance.currentUser!.email.obs;
  final _userPhotoURL = FirebaseAuth.instance.currentUser!.photoURL.obs;

  get userName => _userName.value;
  get userEmail => _userEmail.value;
  get userPhotoURL => _userPhotoURL.value;
}
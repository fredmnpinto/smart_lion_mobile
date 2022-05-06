import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class UserProfileController extends GetxController {
  final _userName = FirebaseAuth.instance.currentUser!.displayName.obs;
  final _userEmail = FirebaseAuth.instance.currentUser!.email.obs;
  final _userPhotoURL = FirebaseAuth.instance.currentUser!.photoURL.obs;

  get userName => this._userName.value;
  get userEmail => this._userEmail.value;
  get userPhotoURL => this._userPhotoURL.value;
}
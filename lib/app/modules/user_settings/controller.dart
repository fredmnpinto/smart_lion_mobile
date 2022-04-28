import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserSettingsController extends GetxController {
  GlobalKey<FormState> userSettingsFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final displayNameController = TextEditingController();
  
  final _userName = FirebaseAuth.instance.currentUser!.displayName.obs;
  final _userEmail = FirebaseAuth.instance.currentUser!.email.obs;
  final _userPhoneNumber = FirebaseAuth.instance.currentUser!.phoneNumber.obs;
  final _userPhotoURL = FirebaseAuth.instance.currentUser!.photoURL.obs;

  get userName => this._userName.value;
  get userEmail => this._userEmail.value;
  get userPhoneNumber => this._userPhoneNumber.value;
  get userPhotoURL => this._userPhotoURL.value;

  /// Guarda todas as informações dos inputs e atualiza no utilizador
  /// 
  /// Por exemplo, pega no input do email e atualiza nos dados do utilizador
  /// Nota.: Se nada for atualizado ele vai atualizar na mesma, porem com os mesmo dados.
  /// 
  /// author: Gabriel Fernandes   13/04/2022
  Future<void> saveSettings() async {
    // Valida o formulario pelos validadores que cada um dos inputFields possuem
    if(!userSettingsFormKey.currentState!.validate()) {
      return;
    }

    FirebaseAuth.instance.currentUser!.updateDisplayName(displayNameController.text);
    FirebaseAuth.instance.currentUser!.updateEmail(emailController.text);
  }
}
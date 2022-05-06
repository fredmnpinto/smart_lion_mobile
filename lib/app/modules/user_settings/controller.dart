import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class UserSettingsController extends GetxController {
  final emailController = TextEditingController(text: FirebaseAuth.instance.currentUser!.email);
  final passwordController = TextEditingController();
  final displayNameController = TextEditingController(text: FirebaseAuth.instance.currentUser!.displayName);
 
  final _userPhotoURL = FirebaseAuth.instance.currentUser!.photoURL.obs;

  get userPhotoURL => this._userPhotoURL.value;

  /// Guarda todas as informações dos inputs e atualiza no utilizador
  /// 
  /// Por exemplo, pega no input do email e atualiza nos dados do utilizador
  /// Nota.: Se nada for atualizado ele vai atualizar na mesma, porem com os mesmo dados.
  /// 
  /// author: Gabriel Fernandes   13/04/2022
  Future<void> saveSettings() async {
    // Valida o formulario pelos validadores que cada um dos inputFields possuem
    if(!GlobalKey<FormState>().currentState!.validate()) {
      return;
    }

    FirebaseAuth.instance.currentUser!.updateDisplayName(displayNameController.text);
    FirebaseAuth.instance.currentUser!.updateEmail(emailController.text);
  }
}
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_01/models/user.dart';

class ProfileController extends GetxController {
  User? _user;
  User get user => _user!;

  String _inputText = '';
  String get inputText => _inputText;
  @override
  void onInit() {
    super.onInit();
    _user = Get.arguments as User;
    log('argumentos ${Get.arguments}');
  }

  void onInputTextChanged(String text) {
    _inputText = text;
  }

  void goToBackWithData() {
    if (_inputText.isNotEmpty) {
      Get.back(result: _inputText);
    } else {
      Get.dialog(AlertDialog(
        title: Text('ERROR'),
        content: Text('Ingrese un valor valido'),
        actions: [
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text('ACEPTAR'))
        ],
      ));
    }
  }
}

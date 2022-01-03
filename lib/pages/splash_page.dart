import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_01/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      dispose: (_) {
        log('Normal dispose');
      },
      init: SplashController(),
      builder: (_) => Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

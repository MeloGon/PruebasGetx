import 'dart:developer';

import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:getx_app_01/pages/home_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds: 2), () {
      Get.off(() => HomePage(), transition: Transition.downToUp);
    });
  }
}

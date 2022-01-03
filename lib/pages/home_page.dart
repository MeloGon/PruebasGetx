import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_app_01/controllers/home_controller.dart';
import 'package:getx_app_01/pages/home_page_widgets/home_label.dart';

import 'home_page_widgets/home_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          log('build Home');
          return Scaffold(
            body: Homelist(),
            /*body: Center(
              child: Homelabel(),
            ),*/
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                _.increment();
              },
              child: const Icon(Icons.add),
            ),
          );
        });
  }
}

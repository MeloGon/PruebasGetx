import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_app_01/controllers/home_controller.dart';
import 'package:getx_app_01/models/user.dart';

class Homelist extends StatelessWidget {
  const Homelist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        id: 'users',
        init: HomeController(),
        builder: (_) {
          return _.loading == true
              ? Center(child: LinearProgressIndicator())
              : ListView.builder(
                  itemCount: _.users.length,
                  itemBuilder: (context, index) {
                    final User user = _.users[index];
                    return ListTile(
                      onTap: () {
                        _.showUserProfile(user);
                      },
                      title: Text(user.firstName!),
                      subtitle: Text(user.email!),
                    );
                  });
        });
  }
}

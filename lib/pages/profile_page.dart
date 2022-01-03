import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app_01/controllers/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
        init: ProfileController(),
        builder: (_) {
          return Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
            ),
            body: Center(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('${_.user.firstName} ${_.user.lastName.toString()}'),
                    SizedBox(
                      height: 10,
                    ),
                    CupertinoTextField(
                      onChanged: _.onInputTextChanged,
                    ),
                    CupertinoButton(
                        child: Text('Aceptar'), onPressed: _.goToBackWithData)
                  ],
                ),
              ),
            ),
          );
        });
  }
}

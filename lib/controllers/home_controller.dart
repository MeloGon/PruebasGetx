import 'dart:developer';

import 'package:get/get.dart';
import 'package:getx_app_01/api/users_api.dart';
import 'package:getx_app_01/models/user.dart';
import 'package:getx_app_01/pages/profile_page.dart';

class HomeController extends GetxController {
  int _counter = 0;
  List<User> _users = [];
  bool _loading = true;

  int get counter => _counter;
  List<User> get users => _users;
  bool get loading => _loading;

  ///simula al initState pero no utilizar con snackbar dialogs
  @override
  void onInit() {
    super.onInit();
    log('Same as initState');
  }

  ///cuando ya se renderizo la pagina si se puede usar snackbar y dialogs
  @override
  void onReady() {
    super.onReady();
    log('OnReady');
    cargarUsuario();
  }

  Future<void> cargarUsuario() async {
    final data = await UsersAPI.instance.getUsers(1);
    _users = data!;
    _loading = false;
    update(['users']);
  }

  void increment() {
    _counter++;
    update(["text"]);
  }

  Future<void> showUserProfile(User user) async {
    final result = await Get.to<String>(() => ProfilePage(),
        arguments: user, transition: Transition.leftToRightWithFade);
    if (result != null) {
      log('👌 result is $result');
    }
  }
}

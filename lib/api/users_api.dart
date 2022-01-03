import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:getx_app_01/models/user.dart';

class UsersAPI {
  UsersAPI._internal(); //define el constructor privado para volver singleton
  static UsersAPI _instance = UsersAPI._internal();
  static UsersAPI get instance => _instance;

  final _dio = Dio();

  Future<List<User>?> getUsers(int page) async {
    try {
      final Response response =
          await _dio.get('https://reqres.in/api/users', queryParameters: {
        "page": page,
      });

      return (response.data['data'] as List)
          .map((e) => User.fromJson(e))
          .toList();
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}

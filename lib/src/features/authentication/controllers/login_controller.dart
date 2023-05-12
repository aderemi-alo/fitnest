import 'package:fitnest/src/repository/authentication_repository/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginUser(String email, String password) {
    AuthenticationRepository.instance
        .loginWithEmailAndPassword(email, password);
  }
}

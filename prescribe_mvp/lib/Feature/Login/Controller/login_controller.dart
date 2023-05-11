import 'package:flutter/material.dart';
import 'package:get/get.dart';

// function form Hafiz
// class LoginController extends GetxController{
//   final email=TextEditingController();
//   final password=TextEditingController();

//   RxBool showPassword = true.obs;
//   sufixFunction() {
//     showPassword.value = !showPassword.value;
//     update();
//   }
// }


class LoginController extends GetxController{
  final email = TextEditingController();
  final password = TextEditingController();

  RxBool showPassword = false.obs;

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
    update();
  }
}


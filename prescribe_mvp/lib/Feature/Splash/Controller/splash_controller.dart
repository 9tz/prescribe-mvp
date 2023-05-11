import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/User%20Type/View/user_type_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 2),()=> Get.to(UserTypeScreen()));
  }
}
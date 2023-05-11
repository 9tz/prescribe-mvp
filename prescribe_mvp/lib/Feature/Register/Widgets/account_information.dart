import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';
import 'package:prescribe_mvp/Widgets/googleButton.drt.dart';
import 'package:prescribe_mvp/Widgets/other_option_line.dart';

class AccountInformation extends StatelessWidget {
  AccountInformation({Key? key}) : super(key: key);
  RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h,),
        CustomTextField(controller: registerController.email, label: AppStrings.emailAddress, hint: "someone@gmail.com",),
        SizedBox(height: 16.h,),
        Obx(()=> CustomTextField(controller: registerController.password, label: AppStrings.createPassword, hint: AppStrings.enterPassword, suffixFun: registerController.sufixFunction, obscureText: registerController.showPassword.value,)),
        SizedBox(height: 48.h,),
        OtherOptionLine(),
        SizedBox(height: 50.h,),
        GoogleButton(),
      ],
    );
  }
}

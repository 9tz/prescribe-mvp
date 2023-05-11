import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';

class PersonalInformation extends StatelessWidget {
  PersonalInformation({Key? key}) : super(key: key);
  RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            CustomTextField(controller: registerController.email, label: AppStrings.firstName, hint: AppStrings.enterFirstName,),
            SizedBox(height: 16.h,),
            CustomTextField(controller: registerController.password, label: AppStrings.lastName, hint: AppStrings.enterLastName,),
            SizedBox(height: 16.h,),
            CustomTextField(controller: registerController.password, label: AppStrings.phoneNumber, hint: AppStrings.enterPhoneNumber,),
            SizedBox(height: 16.h,),
            CustomTextField(controller: registerController.password, label: AppStrings.dateOfBirth, hint: AppStrings.selectDate,),
            SizedBox(height: 16.h,),
            CustomTextField(controller: registerController.password, label: AppStrings.address, hint: AppStrings.enterPhysicalAddress,),
          ],
        ),
      ),
    );
  }
}

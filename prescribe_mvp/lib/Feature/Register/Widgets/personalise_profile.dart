import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';

import '../../../Widgets/custom_dropdown.dart';

class PersonalizeProfile extends StatelessWidget {
  PersonalizeProfile({Key? key}) : super(key: key);
  RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30.h,),
            Image.asset(AppAssets.circlePerson, height: 100.h, width: 100.w, fit: BoxFit.fill,),
            SizedBox(height: 15.h,),
            Text(AppStrings.addProfileImage, style: AppStyles.buttonLabelStyle(color: AppColors.primaryBlueColor),),
            SizedBox(height: 30.h,),
            CustomTextField(controller: registerController.height, label: AppStrings.height, hint: AppStrings.enterHeight,),
            SizedBox(height: 16.h,),
            CustomTextField(controller: registerController.weight, label: AppStrings.weight, hint: AppStrings.enterWeight,),
            SizedBox(height: 16.h,),
            Obx(()=> CustomDropdown(hint: AppStrings.selectOption, label: AppStrings.bloodType,
              items: registerController.bloodTypes,
              selectedProfile: registerController.selectedBloodType.value,
              onChange:(value)=> registerController.setBloodType(value),
            )),
            // CustomTextField(controller: registerController.bloodType, label: AppStrings.bloodType, hint: AppStrings.enterOption,),
            SizedBox(height: 16.h,),
          ],
        ),
      ),
    );
  }
}

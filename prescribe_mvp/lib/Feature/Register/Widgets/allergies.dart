import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class Allergies extends StatelessWidget {
  Allergies({Key? key}) : super(key: key);
  RegisterController registerController=Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 18.h,),
        Obx(
        ()=> Container(
            height: 76.h, width: 343.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: AppColors.textFieldBgColor,
              border: Border.all(
                width: 2,
                color: registerController.isAllergies.value=="Yes"
                    ? AppColors.primaryBlueColor
                    : AppColors.textFieldBgColor,
              ),
            ),
            child: Center(
              child: ListTile(
                title: Text("Yes", style: AppStyles.heading2Style(size: 16.sp),),
                subtitle: Text("I have allergies", style: AppStyles.customText(fontWeight: FontWeight.w400),),
                leading: InkWell(
                    onTap: (){
                      registerController.isAllergies("Yes");
                    },
                    child: registerController.isAllergies.value=="Yes"
                        ? Image.asset(AppAssets.selected)
                        : Image.asset(AppAssets.unselected),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.h,),
        Obx(
        ()=> Container(
            height: 76.h, width: 343.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                width: 2,
                  color: registerController.isAllergies.value=="No"
                      ? AppColors.primaryBlueColor
                      : AppColors.textFieldBgColor,
              ),
              color: AppColors.textFieldBgColor
            ),
            child: Center(
              child: ListTile(
                title: Text("Yes", style: AppStyles.heading2Style(size: 16.sp),),
                subtitle: Text("I have allergies", style: AppStyles.customText(fontWeight: FontWeight.w400),),
                leading: InkWell(
                    onTap: (){
                      registerController.isAllergies("No");
                    },
                    child: registerController.isAllergies.value=="No"
                        ? Image.asset(AppAssets.selected)
                        : Image.asset(AppAssets.unselected),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

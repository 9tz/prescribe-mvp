import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/cureent_screen.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

import '../Controller/register_controller.dart';

class HistoryCard extends StatelessWidget {
  final String title;
  final String status;
  Function()? onTap;

  HistoryCard({super.key, required this.title, required this.status, this.onTap});
  RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 343.w,
        height: 76.h,
        margin: EdgeInsets.only(top: 8.h),
        decoration: BoxDecoration(
          color: status==AppStrings.complete
              ? AppColors.primaryBlueColor
              :AppColors.textFieldBgColor,
          borderRadius: BorderRadius.circular(16.r)
        ),
        child: Center(
          child: ListTile(
            title: Text(title, style: AppStyles.heading2Style(size: 16.sp, color:  status==AppStrings.complete
                ? AppColors.appBackgroundColor
                :AppColors.semiBlack,)),
            subtitle: Text(status, style: AppStyles.customText(color: AppColors.lightGrey, fontWeight: FontWeight.w400),),
            trailing: Image.asset(AppAssets.arrowRight, height: 24.h, width: 24.w, fit: BoxFit.fitWidth,
            color: status==AppStrings.complete
                ? AppColors.appBackgroundColor
                :AppColors.semiBlack,
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Util/app_colora.dart';
import '../../../Util/app_styles.dart';
import '../Controller/pharmacies_controller.dart';

class PharmaciesType extends StatelessWidget {
   PharmaciesController pharmaciesController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46.h, width: 216.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.r),
            color: AppColors.appBackgroundColor
        ),
        child: Row(
          children: [
            selectionContainer("Collection"),
            selectionContainer("Delivery"),
          ],
        )
    );
  }
  Widget selectionContainer(String value) {
    return InkWell(
      onTap: ()=> pharmaciesController.pharmaciesType(value),
      child: Obx(
        ()=> Container(
          margin: EdgeInsets.symmetric(horizontal: 4.w),
          height: 38.h, width: 100.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: pharmaciesController.pharmaciesType.value==value
                  ? AppColors.primaryBlueColor
                  : AppColors.appBackgroundColor,
          ),
          child: Center(
            child: Text(
              value, style: AppStyles.customText(fontWeight: FontWeight.w400, fontSize: 14.sp,
            color: pharmaciesController.pharmaciesType.value==value
                ? AppColors.appBackgroundColor
                : AppColors.lightGrey,
            ),
            ),
          ),
        ),
      ),
    );
  }
}

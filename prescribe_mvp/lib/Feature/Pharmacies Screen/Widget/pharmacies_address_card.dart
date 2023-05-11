import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../Util/app_assets.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_styles.dart';
import '../Controller/pharmacies_controller.dart';

class PharmaciesAddressCard extends StatelessWidget {
  final int index;
  PharmaciesController pharmaciesController = Get.find();

  PharmaciesAddressCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        margin: EdgeInsets.symmetric(vertical: 6.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        height: 120.h,
        width: 343.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.appBackgroundColor,
          border: Border.all(
            width: 2,
            color: pharmaciesController.selectedAddressIndex.value == index
                ? AppColors.primaryBlueColor
                : AppColors.textFieldBgColor,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                pharmaciesController.selectedAddressIndex(index);
              },
              child: pharmaciesController.selectedAddressIndex.value == index
                  ? Image.asset(AppAssets.squareSelected, height: 24.h, width: 24.w,)
                  : Image.asset(AppAssets.squareUnselected, height: 24.h, width: 24.w,),
            ),
            SizedBox(width: 16.w,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dischem ClearWater Mall",
                  style: AppStyles.secandryHeading(),
                ),
                SizedBox(height: 8.h,),
                Text(
                        "4.4KM",
                        style: AppStyles.heading2Style(size: 16.sp, color: AppColors.lightGrey),
                      ),
                SizedBox(height: 10.h,),
                Text(
                        "Partial Order",
                        style: AppStyles.heading2Style(size: 16.sp, color: AppColors.lightGrey),
                      ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

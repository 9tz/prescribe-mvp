import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_padding.dart';

import '../../../Util/app_colora.dart';
import '../../../Util/app_strings.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_network_image.dart';

class MyPrescriptionsHeader extends StatelessWidget {
  const MyPrescriptionsHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 208.h, width: 343.w,
      padding: AppPadding.primaryPadding,
      decoration: BoxDecoration(
        color: AppColors.primaryBlueColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomNetworkImage(
                url: AppStrings.profileImageUrl,
              ),
              SizedBox(width: 10.w,),
              Text("Dr Maria Lopez", style: AppStyles.regularTextStyle(color: AppColors.appBackgroundColor),),
            ],
          ),
          Text("6 November 2022", style: AppStyles.secandryHeading(color: AppColors.appBackgroundColor),),
          Container(
            height: 24.h, width: 95.w,
            decoration: BoxDecoration(
              color: AppColors.appBackgroundColor,
              borderRadius: BorderRadius.circular(100.r),
            ),
            child: Center(
              child: Text(
                AppStrings.availableNow, style: AppStyles.customText(color: AppColors.blueTextColor, fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Dr Jardim Practice", style: AppStyles.regularTextStyle(color: AppColors.blueAccent),),
              Text("Date Issued\n01-Aug-2022", style: AppStyles.regularTextStyle(color: AppColors.blueAccent),),

            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Util/app_assets.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_strings.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_textfield.dart';

class ExpansionTileBody extends StatelessWidget {
  const ExpansionTileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.primaryPadding,
      height: 180.h,
      width: 343.w,
      decoration: BoxDecoration(
          color: AppColors.appBackgroundColor,
          borderRadius: BorderRadius.circular(12.r)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(AppStrings.yourLocation, style: AppStyles.secandryHeading(color: AppColors.prussianBlue),),
              Icon(Icons.cancel_outlined, color: AppColors.lightGrey, size: 24.sp,)
            ],
          ),
          CustomTextField(
            prefixIcon: AppAssets.searchIcon,
            fillColor: AppColors.appBackgroundColor2,
            hint: AppStrings.enterNewAddress, controller: TextEditingController(),),
          Text(AppStrings.currentLocation, style: AppStyles.secandryHeading(color: AppColors.prussianBlue),),
          Row(
            children: [
              Icon(Icons.place, color: AppColors.lightGrey,),
              SizedBox(width: 5.w,),
              RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "Road number, town,",
                            style: AppStyles.customText(fontWeight: FontWeight.w700, fontSize: 16.sp, color: AppColors.greyText)
                        ),
                        TextSpan(
                            text: " City, Country",
                            style: AppStyles.customText(fontWeight: FontWeight.w600, fontSize: 14.sp, color: AppColors.greyText)
                        ),
                      ]
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30.h),
      height: 48.h, width: 343.w,
      decoration: BoxDecoration(
        color: AppColors.textFieldBgColor,
        borderRadius: BorderRadius.circular(8.r)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.googleIcon, height: 24.h, width: 24.w, fit: BoxFit.fill,),
          SizedBox(width: 8.w,),
          Text(AppStrings.continueWithGoogle, style: AppStyles.buttonLabelStyle(color: AppColors.semiBlack),)
        ],
      ),
    );
  }
}

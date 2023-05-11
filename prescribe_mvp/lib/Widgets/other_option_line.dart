import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class OtherOptionLine extends StatelessWidget {
  const OtherOptionLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 84.w, height: 2.h,
          color: AppColors.beauBlue,
        ),
        SizedBox(width: 16.w,),
        Text(AppStrings.otherOptions, style: AppStyles.heading2Style(color: AppColors.beauBlue),),
        SizedBox(width: 16.w,),
        Container(
          width: 84.w, height: 2.h,
          color: AppColors.beauBlue,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function()? buttonFunction;
  final double? width;

  const CustomButton({super.key, this.width, required this.label, this.buttonFunction});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.h, left: 16.w, right: 16.w),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
      color: Colors.transparent,
      child: InkWell(
        onTap: buttonFunction,
        child: Container(
          height: 48.h,
          width: width?? 343.w,
          decoration: BoxDecoration(
            color: AppColors.primaryBlueColor,
            borderRadius: BorderRadius.circular(8.r)
          ),
          child: Center(
            child: Text(label, style: AppStyles.buttonLabelStyle(),),
          ),
        ),
      ),
    );
  }
}

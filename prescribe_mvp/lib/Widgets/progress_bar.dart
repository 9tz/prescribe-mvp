import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';

class ProgressBar extends StatelessWidget {
  final double percentage;

  const ProgressBar({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return LinearPercentIndicator(
      width: 343.w,
      lineHeight: 6.h,
      percent: percentage,
      barRadius: Radius.circular(100.r),
      backgroundColor: AppColors.textFieldBgColor,
      progressColor: AppColors.primaryBlueColor,
    );
  }
}

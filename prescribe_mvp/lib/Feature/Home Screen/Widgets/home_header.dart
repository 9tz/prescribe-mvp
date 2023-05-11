import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:prescribe_mvp/Widgets/custom_network_image.dart';

import '../../../Util/app_colora.dart';

class HomeHeader extends StatelessWidget {
  final Function()? onTap;

  const HomeHeader({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(AppStrings.welcome, style: AppStyles.primeryHeading(color: AppColors.semiBlack, fontSize: 34.sp),),
            Text("Metja Toona", style: AppStyles.heading1Style(color: AppColors.blueTextColor),),
          ],
        ),
        InkWell(
          onTap: onTap,
          child: SizedBox(
            height: 57.h, width: 57.w,
            // color: Colors.yellow,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CustomNetworkImage(
                    url: AppStrings.profileImageUrl,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: EdgeInsets.only(top: 4.h, right: 5.w),
                    height: 10.h, width: 10.w,
                    decoration: BoxDecoration(
                      color: AppColors.orangeColor,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 1.5.sp)
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

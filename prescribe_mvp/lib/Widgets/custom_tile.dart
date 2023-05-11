import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class CustomTile extends StatelessWidget {
  final String? title;
  final Function()? onTap;
  const CustomTile({super.key, this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title.toString(), style: AppStyles.profileSubHeading(),),
            Icon(Icons.arrow_forward_ios_rounded, color: AppColors.lightGrey,)
          ],
        ),
      ),
    );
  }
}

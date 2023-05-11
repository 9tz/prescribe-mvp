import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class PrescriptionCard extends StatelessWidget {
  final String date;
  final String image;
  final String drName;
  final String? status;
  final bool showStatus;
  final Function()? onTap;

  const PrescriptionCard({super.key, this.onTap, required this.date, required this.drName, required this.image, this.status, this.showStatus=false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        margin: EdgeInsets.symmetric(vertical: 6.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.r),

        ),
        child: Row(
          children: [
            Image.asset(image, height: 55.h, width: 55.w,),
            SizedBox(width: 16.w,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(date, style: AppStyles.customText(fontSize: 18.sp, color: AppColors.prussianBlue),),
                  SizedBox(height: 7.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(drName, style: AppStyles.regularTextStyle(color: AppColors.greyText),),
                      showStatus
                          ? Container(
                        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          color: AppColors.primaryBlueColor,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Row(
                          children: [
                            Image.asset(AppAssets.clockIcon, height: 16.h, width: 16.w,),
                            SizedBox(width: 6.w,),
                            Text(status!, style: AppStyles.regularTextStyle(),)
                          ],
                        ),
                      )
                          : SizedBox(),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

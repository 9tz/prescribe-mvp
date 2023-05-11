import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

import '../../../Util/app_strings.dart';
import '../../../Widgets/custom_expansion_tile.dart';


class PrescriptionDetailScreen extends StatelessWidget {
  const PrescriptionDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 50.h,
        backgroundColor: AppColors.appBackgroundColor,
        elevation: 0,
        leading: Center(child: InkWell(
            onTap:()=> Get.back(),
            child: Image.asset(AppAssets.backBgIcon, height: 40.h, width: 40.w,))),
        actions: [
          Center(child: Image.asset(AppAssets.controlButton, height: 40.h, width: 40.w,)),
          SizedBox(width: 10.w,),
        ],
      ),
      body: Container(
        color: AppColors.appBackgroundColor2,
        child: Column(
          children: [
            Container(
              height: 275.h,
              width: 379.w,
              decoration: BoxDecoration(
                color: AppColors.appBackgroundColor,
                image: DecorationImage(
                  image: AssetImage(AppAssets.MediSampleImage),
                  fit: BoxFit.fill
                ),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30.r),
                  bottomLeft: Radius.circular(30.r),
                )
              ),
            ),
            SizedBox(height: 12.h,),
            Container(
              height: 96.h, width: 343.w,
              decoration: BoxDecoration(
                color: AppColors.primaryBlueColor,
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                  image: AssetImage(AppAssets.bigCircles),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Advil", style: AppStyles.secandryHeading(color: Colors.white),),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                          decoration: BoxDecoration(
                            color: AppColors.appBackgroundColor,
                            borderRadius: BorderRadius.circular(12.r)
                          ),
                          child: Center(
                            child: Text(
                              "Syrup",
                              style: AppStyles.customText(color: AppColors.blueTextColor, fontSize: 12.sp),
                            ),
                          ),
                        )
                      ],
                    ),
                    Text("Schedule 2", style: AppStyles.regularTextStyle(color: Colors.white),)
                  ],
                ),
              )
            ),
            SizedBox(height: 20.h,),
            CustomExpansionTile(
              title: AppStrings.composition,
              content: "acetylated monoglycerides, colloidal silicon dioxide, corn starch, croscarmellose sodium, methylparaben, microcrystalline cellulose, pharmaceutical glaze, pharmaceutical ink",
            ),
            CustomExpansionTile(
              title: AppStrings.indications,
              content: "acetylated monoglycerides, colloidal silicon dioxide, corn starch, croscarmellose sodium, methylparaben, microcrystalline cellulose, pharmaceutical glaze, pharmaceutical ink",
            ),
            CustomExpansionTile(
              title: AppStrings.contraIndications,
              content: "acetylated monoglycerides, colloidal silicon dioxide, corn starch, croscarmellose sodium, methylparaben, microcrystalline cellulose, pharmaceutical glaze, pharmaceutical ink",
            ),
          ],
        ),
      ),
    ));
  }
}

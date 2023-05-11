import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Get%20Started/View/get_started_screen.dart';
import 'package:prescribe_mvp/Feature/User%20Type/Controller/type_controller.dart';
import 'package:prescribe_mvp/Feature/User%20Type/Widget/type_tile.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';

class UserTypeScreen extends StatelessWidget {
  const UserTypeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // padding: EdgeInsets.symmetric(horizontal: 16.w),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            AppColors.primaryBlueColor,
            AppColors.secandaryBlueColor,
          ]),
          image: DecorationImage(
            image: AssetImage(AppAssets.typeBg),
            fit: BoxFit.fitWidth
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 90.h,),
            Text(AppStrings.prescribePrototype, style: AppStyles.primeryHeading(),),
            SizedBox(height: 15.h,),
            Image.asset(AppAssets.logoWhite, height: 80.h, width: 77.w, fit: BoxFit.fill,),
            SizedBox(
                width: 268.w,
                child: Text(AppStrings.selectUserType, textAlign: TextAlign.center, style: AppStyles.regularTextStyle(),)),
            SizedBox(height: 76.h,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: userType.values.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (BuildContext, int index){
                  return TypeTile(label: userType.values[index].name,);
                }),
            Spacer(),
            CustomButton(label: AppStrings.getStarted, buttonFunction: () async
            {
              Get.to(GetStartedScreen(), transition: Transition.downToUp);
              await FlutterStatusbarcolor.setStatusBarColor(
                  Platform.isIOS
                      ? AppColors.appBackgroundColor
                      : AppColors.appBackgroundColor2
              );
              await FlutterStatusbarcolor.setNavigationBarColor(
                  Platform.isIOS
                      ? AppColors.appBackgroundColor
                      : AppColors.semiBlack
              );
            },),
            SizedBox(height: 10.h,),
          ],
        ),
      ),
    );
  }
}

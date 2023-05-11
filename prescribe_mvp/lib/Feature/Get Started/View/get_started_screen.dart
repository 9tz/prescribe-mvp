import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Login/View/login_screen.dart';
import 'package:prescribe_mvp/Feature/Register/View/register_screen.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:show_up_animation/show_up_animation.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';
import 'terms_and_conditions_screen.dart';

import 'package:url_launcher/url_launcher.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Container(
        // padding: AppPadding.primaryPadding,
        child: Stack(
          children: [
            Image.asset(
              AppAssets.coloredDots,
              height: 498.h,
              width: 375.w,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ShowUpAnimation(
                    delayStart: Duration(milliseconds: 200),
                    animationDuration: Duration(seconds: 1),
                    curve: Curves.linear,
                    direction: Direction.vertical,
                    offset: 0.5,
                    child: Column(
                      children: [
                        Image.asset(
                          AppAssets.doctor,
                          height: 349.h,
                          width: 208.w,
                          fit: BoxFit.fill,
                        ),
                        Text(
                          AppStrings.medicationMadeEasy,
                          style: AppStyles.primeryHeading(
                              color: AppColors.semiBlack),
                        ),
                        SizedBox(
                            width: 268.w,
                            child: Text(
                              AppStrings.stayAheadYour,
                              textAlign: TextAlign.center,
                              style: AppStyles.regularTextStyle(
                                  color: AppColors.lightGrey),
                            )),
                        SizedBox(
                          height: 40.h,
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    label: AppStrings.login,
                    buttonFunction: () => Get.to(LoginScreen()),
                  ),
                  // InkWell(
                  //     onTap: () => Get.to(RegisterScreen()),
                  //     child: Text(
                  //       AppStrings.register,
                  //       style: AppStyles.buttonLabelStyle(
                  //           color: AppColors.blueTextColor),
                  //     )),
                  SizedBox(
                    height: 50.h,
                  ),
                  Text(
                    AppStrings.byContinuingAgree,
                    style: AppStyles.customText(color: AppColors.lightGrey),
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TermsAndConditionsScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

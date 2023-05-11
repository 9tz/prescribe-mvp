import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Splash/Controller/splash_controller.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
   SplashController splashController = Get.put(SplashController());
   late AnimationController controller;
   late Animation sizeAnimation;

   @override
   void initState() {
     super.initState();
     controller =  AnimationController(vsync: this, duration: Duration(seconds: 2));
     sizeAnimation = Tween<double>(begin: 70.0, end: 150.0).animate(controller);
     controller.forward();
     controller.addListener(() {
       setState(() {});
     });
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor,
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.appLogo, fit: BoxFit.fill, height: sizeAnimation.value, width: sizeAnimation.value,),
              // SizedBox(height: 10.h,),
              Text(AppStrings.prescribe, style: AppStyles.heading1Style(),),
            ],
          ),
        ),
      ),
    ));
  }
}

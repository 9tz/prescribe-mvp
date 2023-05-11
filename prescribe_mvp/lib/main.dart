import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'Feature/Splash/View/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(375,812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Prescribe',
          theme: ThemeData(
              textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp,bodyColor: Colors.black),
              scaffoldBackgroundColor: AppColors.appBackgroundColor,
              fontFamily: 'Vazirmatn',
          ),
          home: child,
        );
      },
      child: SplashScreen(),
    );
  }
}



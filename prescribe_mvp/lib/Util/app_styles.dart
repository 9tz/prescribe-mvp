import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
 static TextStyle primeryHeading({Color? color, double? fontSize}){
  return GoogleFonts.titilliumWeb(textStyle: TextStyle(
       color: color ?? AppColors.appBackgroundColor,
       fontSize: fontSize ?? 24.sp,
       fontWeight: FontWeight.w700
   ),);
 }
 static TextStyle secandryHeading({Color? color, double? fontSize}){
  return GoogleFonts.inter(textStyle: TextStyle(
      color: color ?? AppColors.semiBlack,
      fontSize: fontSize ?? 20.sp,
      fontWeight: FontWeight.w600
  ),);
 }
 static TextStyle customText({Color? color, FontWeight? fontWeight, double? fontSize}){
  return GoogleFonts.oxygen(
   textStyle:  TextStyle(
       color: color ?? AppColors.semiBlack,
       fontSize: fontSize ?? 14.sp,
       fontWeight: fontWeight ?? FontWeight.w700
   ),
  );
 }


 static TextStyle buttonLabelStyle({Color? color}){
  return GoogleFonts.oxygen(
   textStyle:  TextStyle(
       color: color ?? AppColors.appBackgroundColor,
       fontSize: 16.sp,
       fontWeight: FontWeight.w700
   ),
  );
 }

 static TextStyle regularTextStyle({Color? color, double? lineHeight}){
  return GoogleFonts.oxygen(
   textStyle:  TextStyle(
       color: color ?? AppColors.appBackgroundColor,
       fontSize: 16.sp,
       fontWeight: FontWeight.w400,
       height: lineHeight ?? 1.3,
   ),
  );
 }

 static TextStyle heading1Style({Color? color}){
  return GoogleFonts.vazirmatn(
   textStyle: TextStyle(
       color: color ?? AppColors.semiBlack,
       fontSize: 16.sp,
       fontWeight: FontWeight.w700
   ),
  );
}
 static TextStyle heading2Style({Color? color, double? size}){
  return GoogleFonts.inter(
   textStyle: TextStyle(
       color: color ?? AppColors.prussianBlue,
       fontSize: size ?? 14.sp,
       fontWeight: FontWeight.w500
   ),
  );
 }

 static TextStyle profileSubHeading({Color? color, double? size}){
  return GoogleFonts.inter(
   textStyle: TextStyle(
       color: color ?? AppColors.lightGrey,
       fontSize: size ?? 16.sp,
       fontWeight: FontWeight.w500
   ),
  );
 }

 static TextStyle appBarTralingText({Color? color, double? size}){
  return GoogleFonts.oxygen(
   textStyle: TextStyle(
       color: color ?? AppColors.lightGrey,
       fontSize: size ?? 16.sp,
       fontWeight: FontWeight.w700
   ),
  );
 }

}
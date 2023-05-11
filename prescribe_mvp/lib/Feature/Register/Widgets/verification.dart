import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verification extends StatelessWidget {
  Verification({Key? key}) : super(key: key);
  RegisterController registerController=Get.find();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 4.h,),
        Text("+27 084 5579 413", style: AppStyles.buttonLabelStyle(color: AppColors.primaryBlueColor),),
        SizedBox(height: 60.h,),
        OtpTextField(
          numberOfFields: 4,
          fillColor: AppColors.textFieldBgColor,
          margin: EdgeInsets.symmetric(horizontal: 10.w),
          fieldWidth: 64.w,
          disabledBorderColor: AppColors.textFieldBgColor,
          borderColor: AppColors.textFieldBgColor,
          filled: true,
          //set to true to show as box or false to show as dash
          showFieldAsBox: false,
          //runs when a code is typed in
          onCodeChanged: (String code) {
            //handle validation or checks here
          },
          //runs when every textfield is filled
          onSubmit: (String verificationCode){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Verification Code"),
                    content: Text('Code entered is $verificationCode'),
                  );
                }
            );
          }, // end onSubmit
        ),
        SizedBox(height: 30.h,),
        RichText(text: TextSpan(
          children: [
            TextSpan(
              text:
                AppStrings.notReceiveCode, style: AppStyles.customText(fontWeight: FontWeight.w400, fontSize: 16.sp)
            ),
            TextSpan(
              text: AppStrings.sendCodeAgain, style: AppStyles.buttonLabelStyle(color: AppColors.primaryBlueColor)
            )
          ]
        )),
      ],
    );
  }

}

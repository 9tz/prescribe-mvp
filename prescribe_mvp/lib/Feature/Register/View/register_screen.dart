// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:prescribe_mvp/Feature/Register/Controller/register_controller.dart';
// import 'package:prescribe_mvp/Feature/Register/cureent_screen.dart';
// import 'package:prescribe_mvp/Util/app_colora.dart';
// import 'package:prescribe_mvp/Util/app_padding.dart';
// import 'package:prescribe_mvp/Util/app_strings.dart';
// import 'package:prescribe_mvp/Util/app_styles.dart';
// import 'package:prescribe_mvp/Widgets/custom_appbar.dart';
// import 'package:prescribe_mvp/Widgets/custom_button.dart';
// import 'package:prescribe_mvp/Widgets/progress_bar.dart';

// // Lindelani imports
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter_form_builder/flutter_form_builder.dart';

// class RegisterScreen extends StatelessWidget {
//   RegisterScreen({Key? key}) : super(key: key);
//   RegisterController registerController= Get.put(RegisterController());
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Obx(
//           ()=> Scaffold(
//             backgroundColor: AppColors.appBackgroundColor,
//             body: Container(
//               padding: AppPadding.primaryPadding,
//               child: Column(
//                 children: [
//                   SizedBox(height: 20.h,),
//                   CustomAppbar(leading: true, title: Current.barTitle(registerController.screenIndex.value), leadingFun: ()=> registerController.updateScreen(isBack: true),),
//                   SizedBox(height: 15.h,),
//                       registerController.screenIndex<4
//                       ? ProgressBar(percentage: registerController.currentProgress.value,)
//                       : SizedBox(height: 10.h,),
//                   SizedBox(height: 30.h,),
//                   Text(Current.screenHeading(registerController.screenIndex.value), style: AppStyles.primeryHeading(color: AppColors.semiBlack),),
//                   SizedBox(
//                       width: 316.w,
//                       child: Text(Current.subHeading(registerController.screenIndex.value), textAlign: TextAlign.center, style: AppStyles.regularTextStyle(color: AppColors.lightGrey, lineHeight: 1.6),)),
//                   Current.body(registerController.screenIndex.value),
//                 ],
//               ),),
//             bottomNavigationBar: CustomButton(label: Current.buttonTitle(registerController.screenIndex.value), buttonFunction: ()=> registerController.updateScreen(isBack: false),),
//           ),
//         ));
//   }
// }



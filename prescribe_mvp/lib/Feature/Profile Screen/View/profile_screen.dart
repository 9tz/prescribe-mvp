import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Register/View/register_screen.dart';
import 'package:prescribe_mvp/Widgets/custom_appbar.dart';
import 'package:prescribe_mvp/Widgets/custom_network_image.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_strings.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_tile.dart';
import '../../Register/Controller/register_controller.dart';
import '../Screens/medical_history_screen.dart';

class ProfileScreen extends StatelessWidget {
   ProfileScreen({Key? key}) : super(key: key);
   RegisterController registerController= Get.put(RegisterController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor,
        appBar: CustomAppbar(
          leading: true,
          title: AppStrings.settings,
          traling: Center(child: Padding(
              padding: EdgeInsets.only(right: 16.w, left: 5.w),
              child: Text(AppStrings.logout, style: AppStyles.appBarTralingText(),))),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: AppPadding.primaryPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30.h,),
                Container(
                  height: 208.h, width: 343.w,
                  decoration: BoxDecoration(
                    color: AppColors.primaryBlueColor,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomNetworkImage(
                        url: AppStrings.profileImageUrl,
                      ),
                      Text("Metja Toona", style: AppStyles.secandryHeading(color: AppColors.appBackgroundColor),),
                      Text("metjatoona1990@gmail.com", style: AppStyles.heading2Style(size: 16.sp, color: AppColors.appBackgroundColor),),
                      SizedBox(height: 1.h,),
                      Container(
                        height: 48.h, width: 175.w,
                        decoration: BoxDecoration(
                          color: AppColors.lightBlue,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: Center(
                          child: Text(
                            AppStrings.editProfile, style: AppStyles.buttonLabelStyle(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h,),
                Text(AppStrings.accountSettings, style: AppStyles.secandryHeading(),),
                SizedBox(height: 8.h,),
                CustomTile(
                  onTap: ()=> Get.to(MedicalHistoryScreen()),
                  title: AppStrings.medicalHistory,),
                CustomTile(title: AppStrings.profile,),
                CustomTile(title: AppStrings.account,),
                CustomTile(title: AppStrings.notifications,),
                SizedBox(height: 16.h,),
                Text(AppStrings.support, style: AppStyles.secandryHeading(),),
                SizedBox(height: 8.h,),
                CustomTile(title: AppStrings.feedback,),
                CustomTile(title: AppStrings.helpSupport,),
                CustomTile(title: AppStrings.fAQs,),
                SizedBox(height: 16.h,),
                Text(AppStrings.legals, style: AppStyles.secandryHeading(),),
                SizedBox(height: 8.h,),
                CustomTile(title: AppStrings.privacyPolicy,),
                CustomTile(title: AppStrings.termsConditions,),
                CustomTile(title: AppStrings.account,),
                SizedBox(height: 16.h,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

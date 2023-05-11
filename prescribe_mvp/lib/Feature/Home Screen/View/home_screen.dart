import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/Home%20Screen/View/search_screen.dart';
import 'package:prescribe_mvp/Feature/Profile%20Screen/View/profile_screen.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';

import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_strings.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/prescription_card.dart';
import '../../My Prescriptions Screen/View/my_prescriptions_screen.dart';
import '../Widgets/add_slider.dart';
import '../Widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.appBackgroundColor2,
        body: Container(
          padding: AppPadding.primaryPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25.h,),
              HomeHeader(
                onTap: ()=> Get.to(ProfileScreen()),
              ),
              SizedBox(height: 16.h,),
              AddSlider(),
              SizedBox(height: 30.h,),
              InkWell(
                onTap: ()=>  Get.to(SearchScreen(), transition: Transition.fade, duration: Duration(milliseconds: 500)),
                child: CustomTextField(
                  editable: false,
                  prefixIcon: AppAssets.searchIcon,
                  fillColor: AppColors.appBackgroundColor,
                  hint: AppStrings.search, controller: TextEditingController(),),
              ),
              SizedBox(height: 32.h,),
              Text(AppStrings.prescriptions, style: AppStyles.customText(fontSize: 18.sp, color: AppColors.prussianBlue),),
              SizedBox(height: 20.h,),
              PrescriptionCard(
                showStatus: true,
                onTap: ()=> Get.to(MyPrescriptionsScreen()),
                image: AppAssets.prescriptionImage,
                date: "10 December 2022",
                drName: "Dr M Lopez",
                status: "Available",
              ),
              PrescriptionCard(
                onTap: ()=> Get.to(MyPrescriptionsScreen()),
                image: AppAssets.prescriptionImage,
                showStatus: true,
                date: "6 November 2022",
                drName: "Dr AA Machaka",
                status: "Filled",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

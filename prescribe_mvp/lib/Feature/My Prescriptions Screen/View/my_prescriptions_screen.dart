import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_padding.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_appbar.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';

import '../../../Util/app_assets.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/prescription_card.dart';
import '../../Pharmacies Screen/View/pharmacies_screen.dart';
import '../../Prescription Detail/View/prescription_detail_screen.dart';
import '../Widget/my_prescriptions_header.dart';

class MyPrescriptionsScreen extends StatelessWidget {
  const MyPrescriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor2,
      appBar: CustomAppbar(
        color: AppColors.appBackgroundColor2,
        leading: true,
        title: AppStrings.myPrescriptions,
        traling: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Icon(Icons.more_horiz_outlined, color: AppColors.lightGrey, size: 30.sp,)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: AppPadding.primaryPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyPrescriptionsHeader(),
              SizedBox(height: 32.h,),
              Text(AppStrings.myMedication, style: AppStyles.secandryHeading(),),
              SizedBox(height: 8.h,),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "1 Tablet 3 Daily",
              ),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "ml 3 Daily",
              ),
              SizedBox(height: 32.h,),
              Text(AppStrings.generics, style: AppStyles.secandryHeading(),),
              SizedBox(height: 8.h,),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "1 Tablet 3 Daily",
              ),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "ml 3 Daily",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // color: AppColors.appBackgroundColor,
        color: Colors.transparent,
        child: CustomButton(label: AppStrings.selectPharmacy,
          buttonFunction: ()=> Get.to(PharmaciesScreen(), transition: Transition.fadeIn
          ),),
      ),
    ));
  }
}

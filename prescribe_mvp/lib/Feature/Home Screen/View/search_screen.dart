import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Widgets/custom_textfield.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_strings.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/prescription_card.dart';
import '../../Prescription Detail/View/prescription_detail_screen.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

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
              Row(
                children: [
                  SizedBox(
                    child: CustomTextField(
                      crossIcon: true,
                      width: 278.w,
                      prefixIcon: AppAssets.searchIcon,
                      fillColor: AppColors.appBackgroundColor,
                      hint: AppStrings.searchMedication, controller: TextEditingController(),),
                  ),
                  SizedBox(width: 15.w,),
                  InkWell(
                      onTap: () {
                        CustomTextField.dissmissKeyboard();
                        Get.back();},
                      child: Text(AppStrings.cancel, style: AppStyles.regularTextStyle(color: AppColors.lightGrey),))
                ],
              ),
              SizedBox(height: 32.h,),
              Text(AppStrings.recentSearch, style: AppStyles.customText(fontSize: 18.sp, color: AppColors.prussianBlue),),
              SizedBox(height: 20.h,),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "Tablets",
                status: "Available",
              ),
              PrescriptionCard(
                onTap: ()=> Get.to(PrescriptionDetailScreen()),
                image: AppAssets.MediSampleImage,
                date: "Advil Ibuprofen",
                drName: "Tablets",
                status: "Filled",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

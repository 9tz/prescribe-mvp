import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';

import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Register/Widgets/history_card.dart';
import '../../Register/Widgets/medical_history.dart';
import '../../Register/cureent_screen.dart';
import 'allergies_screen.dart';
import 'patient_info_screen.dart';

class MedicalHistoryScreen extends StatelessWidget {
  const MedicalHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appBackgroundColor,
          appBar: CustomAppbar(
            leading: true,
            title: AppStrings.medicalHistory,
          ),
          body: Padding(
            padding: AppPadding.primaryPadding,
            child: Column(
              children: [
                SizedBox(height: 30.h,),
            ListView.builder(
                shrinkWrap: true,
                itemCount: Current.medicalType.length,
                itemBuilder: (BuildContext, int index){
                  return HistoryCard(
                    onTap: (){
                      if(index==0){
                        Get.to(PatientInfoScreen());
                      }else if(index==1){
                        Get.to(AllergiesScreen());
                      }
                    },
                    title: Current.medicalType[index].title,
                    status: Current.medicalType[index].status,);
                }),
              ],
            ),
          ),
        ));
  }
}

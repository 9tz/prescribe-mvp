import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Register/Widgets/personalise_profile.dart';

class PatientInfoScreen extends StatelessWidget {
  const PatientInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appBackgroundColor,
          appBar: CustomAppbar(
            leading: true,
            title: AppStrings.generalPatientInfo,
          ),
          body: Padding(
            padding: AppPadding.primaryPadding,
            child: Column(
              children: [
                SizedBox(height: 30.h,),
                Text(AppStrings.personaliseYourProfile, style: AppStyles.primeryHeading(color: AppColors.semiBlack),),
                SizedBox(
                    width: 316.w,
                    child: Text(AppStrings.providingInformationWill, textAlign: TextAlign.center, style: AppStyles.regularTextStyle(color: AppColors.lightGrey, lineHeight: 1.6),)),
                PersonalizeProfile(),
              ],
            ),
          ),
          bottomNavigationBar: CustomButton(label: AppStrings.complete),
        ));
  }
}

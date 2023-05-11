import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_button.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_padding.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_appbar.dart';
import '../../Register/Widgets/allergies.dart';
import '../../Register/Widgets/personalise_profile.dart';

class AllergiesScreen extends StatelessWidget {
  const AllergiesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.appBackgroundColor,
          appBar: CustomAppbar(
            leading: true,
            title: AppStrings.allergies,
          ),
          body: Padding(
            padding: AppPadding.primaryPadding,
            child: Column(
              children: [
                SizedBox(height: 30.h,),
                Text(AppStrings.doHaveAnyAllergies, style: AppStyles.primeryHeading(color: AppColors.semiBlack),),
                SizedBox(
                    width: 316.w,
                    child: Text(AppStrings.thisSomeShortDescription, textAlign: TextAlign.center, style: AppStyles.regularTextStyle(color: AppColors.lightGrey, lineHeight: 1.6),)),
                Allergies(),

              ],
            ),
          ),
          bottomNavigationBar: CustomButton(label: AppStrings.complete),
        ));
  }
}

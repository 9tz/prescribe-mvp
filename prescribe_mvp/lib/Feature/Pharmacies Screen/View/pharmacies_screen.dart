import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_padding.dart';
import 'package:prescribe_mvp/Util/app_strings.dart';
import 'package:prescribe_mvp/Widgets/custom_appbar.dart';
import '../../../Util/app_colora.dart';
import '../../../Util/app_styles.dart';
import '../../../Widgets/custom_button.dart';
import '../../../Widgets/custom_expansion_tile.dart';
import '../Controller/pharmacies_controller.dart';
import '../Widget/expansion_tile_body.dart';
import '../Widget/pharmacies_address_card.dart';
import '../Widget/pharmacies_type.dart';
import 'package:simple_animations/simple_animations.dart';

class PharmaciesScreen extends StatelessWidget {
   PharmaciesScreen({Key? key}) : super(key: key);
   PharmaciesController pharmaciesController = Get.put(PharmaciesController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: AppColors.appBackgroundColor2,
      appBar: CustomAppbar(
        color: AppColors.appBackgroundColor2,
        leading: true,
        leadingFun: ()=> Get.back(),
        title: AppStrings.pharmacies,
      ),
      body: Container(
        padding: AppPadding.primaryPadding,
        child: Column(
          children: [
            SizedBox(height: 20.h,),
            PharmaciesType(),
            SizedBox(height: 20.h,),
            CustomExpansionTile(title: "Current 9 Kloof Falls Road",
            centerTitle: true,
            body: ExpansionTileBody()
            ),
            SizedBox(height: 8.h,),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext, int index){
                    return PharmaciesAddressCard(index: index,);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar:

      Container(
        // color: AppColors.appBackgroundColor,
        height: 70.h,
        color: Colors.transparent,
        child: Stack(
          children: [
            SizedBox(width: 16.w,),
            Padding(
                padding: EdgeInsets.only(top: 16.h, left: 16.w),
                child: Text("Rs 250.00", style: AppStyles.secandryHeading(),)),
            Align(
              alignment: Alignment.centerRight,
              child: PlayAnimationBuilder<double>(
                tween: Tween(begin: 343.w, end: 197.w,), // 100.0 to 200.0
                duration: const Duration(milliseconds: 300), // for 1 second
                builder: (context, value, _) {
                  return CustomButton(width: value,label: AppStrings.completeOrder,);
                },
                onCompleted: () {
                  // do something ...
                },
              ),
            ),
          ],
        )


        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     SizedBox(width: 16.w,),
        //     Padding(
        //         padding: EdgeInsets.only(top: 16.h),
        //         child: Text("Rs 250.00", style: AppStyles.secandryHeading(),)),
        //     PlayAnimationBuilder<double>(
        //       tween: Tween(begin: 343.w, end: 197.w,), // 100.0 to 200.0
        //       duration: const Duration(seconds: 1), // for 1 second
        //       builder: (context, value, _) {
        //         return CustomButton(width: value,label: AppStrings.completeOrder,);
        //       },
        //       onCompleted: () {
        //         // do something ...
        //       },
        //     ),
        //     // CustomButton(width: 197.w,label: AppStrings.completeOrder,),
        //   ],
        // )
      ),
    ));
  }
}

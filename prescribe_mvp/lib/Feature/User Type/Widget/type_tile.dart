import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Feature/User%20Type/Controller/type_controller.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class TypeTile extends StatelessWidget {
  final String label;
  TypeController typeController = Get.put(TypeController());
  TypeTile({super.key, required this.label,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=> typeController.curentUserType(label),
      child: Obx(
        ()=> Container(
          height: 80.h, width: 343.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: typeController.curentUserType== label
                ? Color(0xff2D6BD7)
                : null,
          ),
          child: Center(
            child: Text(label, style: AppStyles.buttonLabelStyle(),),
          ),
        ),
      ),
    );
  }
}

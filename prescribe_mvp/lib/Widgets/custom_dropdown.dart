import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Util/app_colora.dart';
import '../Util/app_styles.dart';

class CustomDropdown extends StatelessWidget {
  final List<String> items;
  final String? label;
  final String hint;
  final Function(String?) onChange;
  final String? selectedProfile;

  CustomDropdown({super.key, required this.items, required this.hint,  this.label, required this.onChange, this.selectedProfile});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 333.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(label != null)
            Text(label!, style: AppStyles.buttonLabelStyle(color: AppColors.prussianBlue),),
          if(label != null)
            SizedBox(height: 6.h,),
          DropdownButtonHideUnderline(
            child: DropdownButton2(
              isExpanded: true,
              hint: Text(
                hint,
                style: AppStyles.regularTextStyle(color: AppColors.lightGrey),
                overflow: TextOverflow.ellipsis,
              ),
              items: items
                  .map((item) =>
                  DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: AppStyles.regularTextStyle(color: AppColors.semiBlack),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
                  .toList(),
              value: selectedProfile,
              onChanged: onChange,
              icon: Icon(Icons.keyboard_arrow_down_outlined),
              buttonHeight: 56.h,
              buttonWidth: 343.w,
              buttonPadding: EdgeInsets.only(left: 16.w, right: 16.w),
              buttonDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.textFieldBgColor,
              ),
              buttonElevation: 0,
              itemHeight: 30.h,
              itemPadding: EdgeInsets.symmetric(horizontal: 16.w),
              dropdownMaxHeight: 100.h,
              dropdownWidth: 343.w,
              dropdownPadding: null,
              dropdownDecoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                color: AppColors.textFieldBgColor,
              ),
              dropdownElevation: 0,
              offset: const Offset(0, 0),
            ),
          ),
        ],
      )

    );
  }
}

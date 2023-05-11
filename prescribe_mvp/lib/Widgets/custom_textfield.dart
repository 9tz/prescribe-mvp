import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final String hint;
  final String? prefixIcon;
  final Color? fillColor;
  final bool? obscureText;
  final bool crossIcon;
  final bool editable;
  final double? width;
  final Function()? suffixFun;
  final Function()? onTap;
  final TextInputType? keyboardType;
  TextEditingController controller;
  final String? Function(String?)? validator;

  CustomTextField(
      {super.key, this.editable=true, this.crossIcon=false, this.fillColor, this.width, this.prefixIcon, this.onTap, required this.hint, this.label, required this.controller, this.keyboardType, this.validator, this.obscureText, this.suffixFun});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(label != null)
        Text(label!, style: AppStyles.buttonLabelStyle(color: AppColors.prussianBlue),),
        if(label != null)
        SizedBox(height: 6.h,),
        Container(
          // height: 56.h,
            width: width ?? 327.w,
            padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: prefixIcon !=null ? 6.w : 16.w),
            decoration: BoxDecoration(
              color: fillColor ?? AppColors.textFieldBgColor,
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: TextFormField(
              onTap: onTap,

              controller: controller,
              keyboardType: keyboardType ?? TextInputType.text,
              obscureText: obscureText ?? false,
              decoration: InputDecoration(
                hintText: hint,
                enabled: editable,
                hintStyle: AppStyles.regularTextStyle(color: AppColors.lightGrey),
                // contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
                prefixIcon: prefixIcon !=null
                    ? SizedBox(
                    width: 20.w,
                    child: Center(child: Image.asset(prefixIcon!, width: 20.w,)))
                    : null,
                // suffixIcon: crossIcon? Icon(Icons.cancel, color: AppColors.lightGrey,) : null,
                suffixIcon: obscureText != null
                    ?InkWell(
                    onTap: suffixFun,
                    child: Icon(obscureText == true ? Icons.visibility : Icons.visibility_off, color: AppColors.primaryBlueColor, size: 28.sp,))
                    : crossIcon? Icon(Icons.cancel, color: AppColors.lightGrey,) : null
              ),
              validator: validator,
            ),
        )
      ],
    );
  }
static dissmissKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
}
}


// class CustomTextFormField extends StatelessWidget {
//   final String? hintText;
//   final String? errorText;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final TextInputAction? textInputAction;
//   final Function(String?)? onSaved;
//   final Widget? icon;
//   final bool? obscureText;
//   final bool? visibility;
//   final bool? dataFieldStyle;
//   final bool readOnly;
//   final Function? onShowPassword;
//
//   final String? Function(String?)? validator;
//
//   CustomTextFormField({
//     Key? key,
//     this.hintText,
//     this.errorText,
//     this.readOnly = false,
//     this.keyboardType,
//     this.textInputAction,
//     this.onSaved,
//     this.controller,
//     this.icon,
//     this.obscureText = false,
//     this.visibility = false,
//     this.dataFieldStyle = true,
//     this.onShowPassword,
//     this.validator,
//   }) : super(key: key);
//
//   // final passController = Get.put(PassController());
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       readOnly: readOnly,
//       controller: controller,
//       obscureText: obscureText!,
//       keyboardType: keyboardType,
//       textInputAction: TextInputAction.done,
//       onSaved: onSaved,
//
//      autovalidateMode: AutovalidateMode.disabled,
//       decoration: InputDecoration(
//         errorText: errorText,
//         label: Text("Lable"),
//         labelStyle: AppTextStyle.dropdownLabel,
//         errorStyle: TextStyle(fontSize: 12, height: 1),
//         border: InputBorder.none,
//         focusedBorder: InputBorder.none,
//         enabledBorder: InputBorder.none,
//         errorBorder: InputBorder.none,
//         disabledBorder: InputBorder.none,
//         // border: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(16.r),
//         //   borderSide:  BorderSide(color: AppColor.bgColor),
//         // ),
//         // enabledBorder: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(16.r),
//         //   borderSide: BorderSide(color: AppColor.textSecandoryColor),
//         // ),
//         // focusedBorder: OutlineInputBorder(
//         //   borderRadius: BorderRadius.circular(16.r),
//         //   borderSide:  BorderSide(color: AppColor.textSecandoryColor),
//         // ),
//         contentPadding: EdgeInsets.symmetric(
//           vertical: 16.h,
//           horizontal: 10.w,
//         ),
//         hintText: hintText,
//         suffixIcon: visibility == true
//             ? InkWell(
//                 child: icon,
//                 onTap: () {
//                   onShowPassword!();
//                 },
//               )
//             : null,
//         hintStyle: AppTextStyle.dropdownLabel,
//       ),
//       style: AppTextStyle.dropdownValue,
//       validator: validator,
//     );
//   }
//   void dissmissKeyboard() {
//     FocusManager.instance.primaryFocus?.unfocus();
//   }
// }

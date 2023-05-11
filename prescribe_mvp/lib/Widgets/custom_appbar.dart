import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';
import 'package:prescribe_mvp/Util/app_colora.dart';
import 'package:prescribe_mvp/Util/app_styles.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool leading;
  final Color? color;
  final Widget? traling;
  Function()? leadingFun;

  CustomAppbar({super.key, this.title, this.leading=false, this.color, this.leadingFun, this.traling});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: color ?? AppColors.appBackgroundColor,
      centerTitle: true,
      leading:  leading
          ?  InkWell(
          onTap: leadingFun ?? ()=>  Get.back(),
          child: Center(child: Image.asset(AppAssets.arrowLeft, height: 24.h, width: 24.w, fit: BoxFit.fill,)))
          : null,
      title: title != null
          ? Text(title!)
          : null,
      titleTextStyle: AppStyles.buttonLabelStyle(color: AppColors.semiBlack),
      actions: [
        traling != null
            ? FadeInLeft(child: traling!,)
            : SizedBox(),
      ],
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(45.h);
}

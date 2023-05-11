import 'package:expansion_widget/expansion_widget.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Util/app_colora.dart';
import '../Util/app_styles.dart';

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? body;
  final bool centerTitle;

   CustomExpansionTile({super.key, this.body, required this.title, this.content, this.centerTitle=false });

  @override
  Widget build(BuildContext context) {
    return ExpansionWidget(
        initiallyExpanded: false,
        titleBuilder: (double animationValue, _, bool isExpaned, toogleFunction) {
          return InkWell(
              onTap: () => toogleFunction(animated: true),
              child:  Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                ),
                child: centerTitle
                    ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            title,
                            style: AppStyles.regularTextStyle(color: AppColors.prussianBlue),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(width: 5.w,),
                          Transform.rotate(
                            angle: math.pi * animationValue / 1,
                            child: Icon(Icons.keyboard_arrow_down_outlined),
                            alignment: Alignment.center,
                          )
                        ],
                      )
                    : Row(
                  children: [
                    Expanded(child: Text(title, style: AppStyles.customText(fontSize: 18.sp), overflow: TextOverflow.ellipsis, maxLines: 1,)),
                    Transform.rotate(
                      angle: math.pi * animationValue / 1,
                      child: Icon(Icons.keyboard_arrow_down_outlined),
                      alignment: Alignment.center,
                    )
                  ],
                )
              ),
          );
        },
        content: body ?? Container(
          width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Text(
              content!,
            // textAlign: TextAlign.justify,
            style: AppStyles.regularTextStyle(color: AppColors.lightGrey, lineHeight: 1.5.h),
          )
        ));
  }
}



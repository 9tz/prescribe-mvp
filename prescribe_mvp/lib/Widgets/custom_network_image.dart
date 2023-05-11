import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Util/app_colora.dart';

class CustomNetworkImage extends StatelessWidget {
  final String? url;
  final double? height;
  final double? width;
  final double? radius;
  final String? name;

  const CustomNetworkImage({super.key, this.url, this.height, this.width, this.radius, this.name});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((radius ?? 100).r),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        height: height?? 50.h,
        width: width ?? 50.w,
        imageUrl: url.toString(),
        placeholder: (context, url) => Center(child: CircularProgressIndicator(color: AppColors.primaryBlueColor,)),
        errorWidget: (context, url, error) => Icon(Icons.error, color: AppColors.semiBlack,)
      ),
    );
  }
}

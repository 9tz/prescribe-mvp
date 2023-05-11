import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prescribe_mvp/Util/app_assets.dart';

import '../../../Util/app_colora.dart';

class AddSlider extends StatefulWidget {
  AddSlider({Key? key}) : super(key: key);

  @override
  State<AddSlider> createState() => _AddSliderState();
}

class _AddSliderState extends State<AddSlider> {
  List<String> images = [
    AppAssets.bannerImage,
    AppAssets.bannerImage,
    AppAssets.bannerImage,
  ];

  final CarouselController _controller = CarouselController();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              height: 180.h,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }
          ),

          items: images.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 16.w),
                  height: 180.h,
                  width: 343.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(i),
                  )),
                );
              },
            );
          }).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 8.w,
                height: 8.h,
                margin: EdgeInsets.symmetric(horizontal: 4.w),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : AppColors.primaryBlueColor)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}

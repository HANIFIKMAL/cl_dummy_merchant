import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class BannerImageSwipe extends StatelessWidget {
  final double height;
  final String? title;
  final List<String> images;
  final SwiperController swiperController;

  BannerImageSwipe({
    super.key,
    required this.height,
    required this.images, // ✅ Ensure images is provided by parent
    this.title,
    SwiperController? swiperController,
  }) : swiperController = swiperController ?? SwiperController(); // ✅ Ensure swiperController is initialized

  @override
  Widget build(BuildContext context) {
    if (images.isEmpty) {
      return Container(
        height: height.h,
        alignment: Alignment.center,
        child: Image.asset(
          'assets/images/no_photo.png', // Default placeholder
          fit: BoxFit.cover,
          width: double.infinity,
          height: 100.h,
        ),
      );
    }

    return SizedBox(
      height: height,
      child: Swiper(
        controller: swiperController,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            images[index],
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          );
        },
        autoplayDelay: 8000,
        autoplayDisableOnInteraction: true,
        autoplay: true,
        itemCount: images.length,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            color: Colors.white,
            activeColor: Colors.amberAccent,
          ),
        ),
      ),
    );
  }
}

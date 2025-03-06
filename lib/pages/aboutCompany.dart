import 'package:chamber_link_dummy_merchant/banner_image_swipe.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Aboutcompany extends StatelessWidget {
  const Aboutcompany({
    super.key,
    this.swiperController,
    this.banners,
  });

  final SwiperController? swiperController;
  final List<String>? banners; // ✅ Ensure it's a list of strings

  @override
  Widget build(BuildContext context) {
    if (banners == null || banners!.isEmpty) {
      return SizedBox(height: 0.15.sh);
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 10,
              )
            ],
            border: Border.all(color: Colors.black.withOpacity(0.05)),
          ),
          child: GestureDetector(
            onLongPress: () => swiperController?.stopAutoplay(),
            onLongPressEnd: (_) => swiperController?.startAutoplay(),
            onTapDown: (_) => swiperController?.stopAutoplay(),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(6.r),
              child: BannerImageSwipe(
                images: banners ?? [],  // ✅ Pass banners safely
                swiperController: swiperController,
                height: 0.22.sh,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

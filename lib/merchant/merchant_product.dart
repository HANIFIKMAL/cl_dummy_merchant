import 'package:carousel_slider/carousel_slider.dart' as cs;
import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/merchant/merchant_product_detail.dart';
import 'package:chamber_link_dummy_merchant/pages/product.dart';
import 'package:flutter/material.dart';

class MerchantProduct extends StatelessWidget {
  final int productIndex;
  const MerchantProduct({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    // Example list of product images
    final List<String> productImages = [
      'assets/product/1.jpg',
      'assets/product/2.jpg',
      'assets/product/3.jpg',
      'assets/product/4.jpg',
    ];

    return Scaffold(
      backgroundColor: kFifthColor,
      appBar: AppBar(
      backgroundColor: kPrimaryColor,
      foregroundColor: Colors.white,
      title: const Text('Product Details', style: TextStyle(color: Colors.white),),
      centerTitle: true, // ✅ Centers the title
      ),
      body: SingleChildScrollView( // ✅ Ensures the whole page is scrollable
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16), // Top spacing
            
            // 📌 Image Slider
            SizedBox(
              height: 250,
              child: cs.CarouselSlider(
                options: cs.CarouselOptions(
                  height: 250,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                ),
                items: productImages.map((imagePath) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      imagePath,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 20), // Spacing

            // 📌 Product Details
            MerchantProductDetail(productIndex: productIndex),

            const SizedBox(height: 20), // Spacing

            // 📌 More Products Section
            const Text("More of Our Products", 
              style: TextStyle(fontSize: 20), 
              textAlign: TextAlign.center
            ),

            const SizedBox(height: 10), // Spacing

            // ✅ Fixed: Wrap `Product()` inside `SizedBox` to give it height
            const SizedBox(
              height: 400,
              child: Product(),
            ),
          ],
        ),
      ),
    );
  }
}

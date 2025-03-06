import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/widget/productWidget.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFifthColor,
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.9, // Adjust aspect ratio for better layout
          ),
          itemCount: 10, // Number of products
          itemBuilder: (context, index) {
            return Productwidget(productIndex: index); // Pass index here
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MerchantProductDetail extends StatelessWidget {
  final int productIndex;
  const MerchantProductDetail({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0), // Add some spacing around the box
      child: Container(
        padding: const EdgeInsets.all(16.0), // Inner padding
        decoration: BoxDecoration(
          color: Colors.white, // Background color
          borderRadius: BorderRadius.circular(12), // Rounded corners
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1), // Soft shadow
              blurRadius: 10,
              spreadRadius: 2,
              offset: const Offset(0, 4), // Shadow position
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align text to left
          children: [
            Text(
              'Details for Product $productIndex',
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold, 
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),

            const Text(
              'This is a detailed description of the product. You can add more details about its features, price, and other specifications.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),

            const Text(
              'This is another section of details about the product. Customize this to match the actual content needed.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            const SizedBox(height: 10),

            const Text(
              'More details can be placed here. Consider adding pricing, availability, or special offers.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

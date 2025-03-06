import 'package:flutter/material.dart';

class Productimagewidget extends StatelessWidget {
  const Productimagewidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'assets/merchant/7e.jpg',
      'assets/merchant/guaman.jpg',
      'assets/merchant/mcd.png',
    ];

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x55000000),
            blurRadius: 8.0,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset(
            products[0],
            fit: BoxFit.cover, // Ensures the image fills the whole container
          ),
        ),
      ),
    );
  }
}

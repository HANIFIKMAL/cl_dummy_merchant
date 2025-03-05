import 'package:flutter/material.dart';

class Productimagewidget extends StatefulWidget {
  const Productimagewidget({super.key});

  @override
  State<Productimagewidget> createState() => _ProductimagewidgetState();
}

class _ProductimagewidgetState extends State<Productimagewidget> {
  final List<String> products = [
    'assets/merchant/7e.jpg',
    'assets/merchant/guaman.jpg',
    'assets/merchant/mcd.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Ensures the container takes full width
      height: double.infinity, // Ensures the container takes full height
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
        child: Image.asset(
          products[0],
          fit: BoxFit.cover, // Ensures the image fills the whole container
        ),
      ),
    );
  }
}

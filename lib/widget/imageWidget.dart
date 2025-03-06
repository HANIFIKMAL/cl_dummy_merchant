import 'package:flutter/material.dart';

class Imagewidget extends StatefulWidget {
  const Imagewidget({super.key});

  @override
  State<Imagewidget> createState() => _ImagewidgetState();
}

class _ImagewidgetState extends State<Imagewidget> {
  final List<String> products = [
    'assets/merchant/7e.jpg',
    'assets/merchant/guaman.jpg',
    'assets/merchant/mcd.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Color(0x55000000),
                  blurRadius: 8.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: ClipOval( // Ensures the image is fully circular
              child: Image.asset(
                products[0],
                fit: BoxFit.cover, // Fills the circular space properly
              ),
            ),
          ),
        ],
      ),
    );
  }
}

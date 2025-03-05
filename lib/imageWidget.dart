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
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0x55000000),
                  blurRadius: 8.0,
                  offset: Offset(2, 2),
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: SizedBox(
              width: 80,
              height: 80,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(products[0]),
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}
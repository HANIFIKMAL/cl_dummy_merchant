import 'package:chamber_link_dummy_merchant/productWidget.dart';
import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Ensures 2 item per row
            childAspectRatio: 1.0, // Adjust height (increase for taller items)
          ),
          itemBuilder: (context, index) {
            return const Productwidget();
          },
        ),
      ),
    );
  }
}
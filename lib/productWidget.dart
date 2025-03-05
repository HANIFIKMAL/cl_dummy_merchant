import 'package:chamber_link_dummy_merchant/detailWidget.dart';
import 'package:chamber_link_dummy_merchant/imageWidget.dart';
import 'package:chamber_link_dummy_merchant/merchant.dart';
import 'package:chamber_link_dummy_merchant/productDetailWidget.dart';
import 'package:chamber_link_dummy_merchant/productImageWidget.dart';
import 'package:flutter/material.dart';

class Productwidget extends StatefulWidget {
  const Productwidget({super.key});

  @override
  State<Productwidget> createState() => _ProductwidgetState();
}

class _ProductwidgetState extends State<Productwidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Merchant(),
          ),
        );
      },
      child: Container(
        width: 160,
        height: 160,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Use SizedBox instead of Expanded to prevent ParentDataWidget errors
            SizedBox(
              height: 100, // Adjust height as needed
              child: Productimagewidget(),
            ),
            SizedBox(height:0), // Spacing
            SizedBox(
              height: 60, // Adjust height as needed
              child: Productdetailwidget(),
            ),
          ],
        ),
      ),
    );
  }
}

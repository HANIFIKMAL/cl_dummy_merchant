import 'package:chamber_link_dummy_merchant/widget/detailWidget.dart';
import 'package:chamber_link_dummy_merchant/widget/imageWidget.dart';
import 'package:chamber_link_dummy_merchant/pages/merchant.dart'; // Import the second page
import 'package:flutter/material.dart';

class Merchantlistwidget extends StatefulWidget {
  const Merchantlistwidget({super.key});

  @override
  State<Merchantlistwidget> createState() => _MerchantlistwidgetState();
}

class _MerchantlistwidgetState extends State<Merchantlistwidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the second page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Merchant(), // Replace with your second page widget
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top:4.0,bottom: 4.0,left: 2.0,right: 2.0),
        child: Container(
          width: 210,
          height: 210,
          padding: const EdgeInsets.all(6),
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
          child: const Stack(
            children: [
              Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: Row(
                  children: [
                    Imagewidget(),
                    SizedBox(width: 2),
                    Detailwidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

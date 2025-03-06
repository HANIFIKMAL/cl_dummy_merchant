import 'package:chamber_link_dummy_merchant/merchant/merchant_product.dart';
import 'package:chamber_link_dummy_merchant/widget/productDetailWidget.dart';
import 'package:chamber_link_dummy_merchant/widget/productImageWidget.dart';
import 'package:flutter/material.dart';

class Productwidget extends StatelessWidget {
  final int productIndex; // To track product index
  const Productwidget({super.key, required this.productIndex});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MerchantProduct(productIndex: productIndex),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 4.0, right: 4.0),
        child: Container(
          width: 160,
          height: 200, // Adjusted height for better layout
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
              Expanded(child: Productimagewidget()),
              SizedBox(height: 4), // Spacing
              Productdetailwidget(), // No need for Expanded
            ],
          ),
        ),
      ),
    );
  }
}

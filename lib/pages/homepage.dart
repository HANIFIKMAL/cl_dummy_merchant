import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/merchant/merchantListWidget.dart';
import 'package:chamber_link_dummy_merchant/pages/product.dart';
import 'package:chamber_link_dummy_merchant/pages/profile.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFifthColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Center(
          child: Text(
            "Merchant List",
            style: TextStyle(fontSize: 20,color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, // Ensures 1 item per row
            childAspectRatio: 3, // Adjust height (increase for taller items)
          ),
          itemBuilder: (context, index) {
            return const Merchantlistwidget();
          },
        ),
      ),
    );
  }
}

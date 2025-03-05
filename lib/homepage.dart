import 'package:chamber_link_dummy_merchant/merchantListWidget.dart';
import 'package:chamber_link_dummy_merchant/product.dart';
import 'package:chamber_link_dummy_merchant/profile.dart';
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
      appBar: AppBar(
        title: const Text("Merchant List"),
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

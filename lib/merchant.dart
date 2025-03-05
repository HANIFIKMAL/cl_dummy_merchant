import 'package:chamber_link_dummy_merchant/product.dart';
import 'package:chamber_link_dummy_merchant/profile.dart';
import 'package:flutter/material.dart';

class Merchant extends StatefulWidget {
  const Merchant({super.key});

  @override
  State<Merchant> createState() => _MerchantState();
}

class _MerchantState extends State<Merchant> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 30,
                        ),
                      ),
                      const Text(
                        "Merchant Profile",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    image: const DecorationImage(
                      image: AssetImage('assets/merchant/7e.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/merchant/7elogo.png', // Replace with your image path
                          width: 50, // Adjust size as needed
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(width: 10), // Space between text and image
                        const Text(
                          "Merchant Profile",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ), 
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 1),
                const TabBar(
                  isScrollable: false,
                  labelStyle: TextStyle(fontSize: 20),
                  tabs: [
                    Tab(text: "Profile"),
                    Tab(text: "Product"),
                  ],
                ),
                // FIX: Use Expanded to prevent unbounded height issue
                const Expanded(
                  child: TabBarView(
                    children: [
                      Profile(),
                      Product(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

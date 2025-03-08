import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/pages/product.dart';
import 'package:chamber_link_dummy_merchant/pages/profile.dart';
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
        backgroundColor: kFifthColor, 
        appBar: AppBar(
          backgroundColor: kPrimaryColor, // ✅ Apply primary color
          title: const Text(
            "Merchant Profile",
            style: TextStyle(fontSize: 20,color: Colors.white,),
          ),
          centerTitle: true, // ✅ Center the title
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 0.0),
            child: Column(
              children: [
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
                        ClipOval(
                          child: Image.asset(
                            'assets/merchant/7elogo.png',
                            width: 60,
                            height: 60,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(width: 10),
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
               const TabBar(
                labelStyle: TextStyle(fontSize: 20),
                labelColor: Colors.black, // ✅ Set label text color to black
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: Colors.black, width: 4.0), // ✅ Thicker black border
                ),
                tabs: [
                  Tab(text: "Profile"),
                  Tab(text: "Catalogue"),
                ],
              ),
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

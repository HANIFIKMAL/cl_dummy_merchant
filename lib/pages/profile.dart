import 'package:chamber_link_dummy_merchant/constant/color_constant.dart';
import 'package:chamber_link_dummy_merchant/pages/aboutCompany.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Profile extends StatefulWidget {
  const Profile({super.key, this.banner});

  final dynamic banner; 

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final SwiperController _swiperControllerbanner = SwiperController();
  dynamic banners = []; // Define the banners variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kFifthColor,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            // Include the About Company widget without passing images
           // Aboutcompany( swiperController: _swiperControllerbanner,
                         // banners: banners,), 

            const SizedBox(height: 12),

            // Company Profile Card
            buildProfileCard(
              title: "Company Profile",
              icon: LucideIcons.building_2,
              content: [
                buildProfileRow("Business Type", "Manufacturer/Factory, Trading Company"),
                buildProfileRow(
                  "Main Products", 
                  "Freezer, Showcase, Kitchen Appliance, Fridge, Heated Display Cabinet, "
                  "Hang The Meat Freezer, Quick-Freezing Refrigerator, Mini Freezer, "
                  "Flower Freezer, Roast Duck Air Drying Cabinet",
                  isLink: true,
                ),
                buildProfileRow("Registered Capital", "1,000,000 MYR"),
                buildProfileRow("Store Area", "Above 200 Square Meters"),
                buildProfileRow(
                  "Management Certification", 
                  "ISO 9001, ISO 14001, ISO 14064, GMP, BSCI"
                ),
                buildProfileRow("Lead Time", "Peak: 1 month | Off-season: 15 workdays"),
                buildProfileRow("Last Login", "Mar 25, 2021"),
              ],
            ),

            const SizedBox(height: 12),

            // Contact Details Card
            buildProfileCard(
              title: "Contact Details",
              icon: LucideIcons.user,
              content: [
                buildProfileRow("Contact Person", "Mr. John Doe"),
                buildProfileRow("Department", "Sales Department"),
                buildProfileRow("Position", "Manager"),
                buildProfileRow("Phone", "+6011-1234 5678"),
                buildProfileRow(
                  "Address", 
                  "9, Jalan Sungai Kapar Indah 3K, Batu 6, Jalan Kapar, "
                  "Taman Sungai Kapar Indah, 42200 Klang, Selangor",
                  isLink: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProfileCard({required String title, required IconData icon, required List<Widget> content}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.deepPurple, size: 24),
                const SizedBox(width: 8),
                Text(
                  title,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Divider(height: 20, thickness: 1.2),
            Column(children: content),
          ],
        ),
      ),
    );
  }

  Widget buildProfileRow(String title, String content, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 140, // Consistent width for labels
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Expanded(
            child: isLink
                ? RichText(
                    text: TextSpan(
                      children: content.split(', ').map((text) {
                        return TextSpan(
                          text: "$text, ",
                          style: const TextStyle(color: Colors.blue, fontSize: 16),
                        );
                      }).toList(),
                    ),
                  )
                : Text(content, style: const TextStyle(fontSize: 16)),
          ),
        ],
      ),
    );
  }
}

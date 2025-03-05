import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              // First Container (Purple Background)
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50], // Light purple background
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Company Profile:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      buildProfileRow("Business Type:", "Manufacturer/Factory,\nTrading Company"),
                      buildProfileRow(
                          "Main Products:",
                          "Freezer, Showcase, Kitchen Appliance, Fridge, Heated Display Cabinet, "
                          "Hang The Meat Freezer, Quick-Freezing Refrigerator, Mini Freezer, "
                          "Flower Freezer, Roast Duck Air Drying Cabinet",
                          isLink: true),
                      buildProfileRow("Registered Capital:", "10,000,000 RMB"),
                      buildProfileRow("Plant Area:", "Above 2000 Square Meters"),
                      buildProfileRow(
                          "Management System Certification:",
                          "ISO 9001, ISO 9000, ISO 14001, ISO 14000, ISO 20000, OHSAS/ OHSMS 18001, "
                          "IATF16949, HSE, ISO 14064, QC 080000, GMP, BSCI"),
                      buildProfileRow("Average Lead Time", "Peak season lead time: one month\nOff season lead time: within 15 workdays"),
                      buildProfileRow("Last Login Date", "Mar 25, 2021"),
                    ],
                  ),
                ),
              ),
              
              const SizedBox(height: 10), // Space between containers
        
              // Second Container (White Background)
              Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.deepPurple[50], // Light purple background
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 5,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Contact Details:",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      buildProfileRow("Contact Person:", "Mr. John Doe"),
                      buildProfileRow("Department:", "Sales Department"),
                      buildProfileRow("Position", "Manager")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildProfileRow(String title, String content, {bool isLink = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150, // Fixed width for the left column
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
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

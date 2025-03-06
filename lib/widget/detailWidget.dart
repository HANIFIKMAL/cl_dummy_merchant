import 'package:flutter/material.dart';

class Detailwidget extends StatelessWidget {
  const Detailwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Flexible(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Merchant Name',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Merchant Address',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
            Text(
              'Merchant Phone Number',
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ), 
    );
  }
}
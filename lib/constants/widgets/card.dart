import 'package:cardholder/constants/colors.dart';
import 'package:flutter/material.dart';

Widget CardBox(
    BuildContext context, String title, String subtitle, String image) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.2,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          primaryColor900,
          primaryColor300,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
        bottomLeft: Radius.circular(10),
        bottomRight: Radius.circular(10),
      ),
    ),
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

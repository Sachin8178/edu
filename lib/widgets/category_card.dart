// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String assetPath;

  CategoryCard({
    required this.title,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160, // Adjust the width as needed
      // decoration: BoxDecoration(
      //   borderRadius: BorderRadius.circular(12),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Colors.grey.withOpacity(0.5),
      //       spreadRadius: 2,
      //       blurRadius: 5,
      //       offset: Offset(0, 3),
      //     ),
      //   ],
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            //borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              assetPath,
              height: 250, // Specify a fixed height for the image
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(60.0),
          //   // child: Text(
          //   //   title,
          //   //   style: TextStyle(
          //   //     fontWeight: FontWeight.bold,
          //   //     fontSize: 16,
          //   //   ),
          //   //   maxLines: 2,
          //   //   overflow: TextOverflow.ellipsis,
          //   // ),
          // ),
        ],
      ),
    );
  }
}

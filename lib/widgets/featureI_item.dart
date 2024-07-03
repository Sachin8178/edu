// ignore_for_file: file_names, use_key_in_widget_constructors, unused_element

import 'package:flutter/material.dart';

class ResponsiveFeatureItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          // Desktop layout
          return _buildDesktopFeatureItems();
        } else {
          // Mobile layout (items stack vertically)
          return _buildMobileFeatureItems();
        }
      },
    );
  }

  Widget _buildDesktopFeatureItems() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        FeatureItem(
          title: 'Problem Solving',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Live chat',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Group Reading',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: '10k Courses',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Hand-on activities',
          iconPath: 'assets/images/Component 21.png',
        ),
      ],
    );
  }

  Widget _buildMobileFeatureItems() {
    return const Wrap(
      alignment: WrapAlignment.start,
      spacing: 16.0,
      runSpacing: 16.0,
      children: [
        FeatureItem(
          title: 'Problem Solving',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Live chat',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Group Reading',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: '10k Courses',
          iconPath: 'assets/images/Component 21.png',
        ),
        FeatureItem(
          title: 'Hand-on activities',
          iconPath: 'assets/images/Component 21.png',
        ),
        // _buildFeatureItem('Problem Solving', 'assets/images/Component 21.png'),
        // _buildFeatureItem('Live chat', 'assets/images/Component 21.png'),
        // _buildFeatureItem('Group Reading', 'assets/images/Component 21.png'),
        // _buildFeatureItem('10k Courses', 'assets/images/Component 21.png'),
        // _buildFeatureItem(
        //     'Hand-on activities', 'assets/images/Component 21.png'),
      ],
    );
  }

  Widget _buildFeatureItem(String title, String iconPath) {
    return Container(
      width: 160.0,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(iconPath, height: 48.0, width: 48.0),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureItem extends StatelessWidget {
  final String title;
  final String iconPath;

  const FeatureItem({required this.title, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      margin: const EdgeInsets.only(
          bottom: 12), // Add margin to create space between items
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisSize:
            MainAxisSize.min, // Ensure the row takes minimum space horizontally
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              iconPath,
              height: 24,
              width: 24,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 8),
          Flexible(
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

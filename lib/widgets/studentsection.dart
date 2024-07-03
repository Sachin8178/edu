// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class StudentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;
        bool isMobile = width < 600;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'We Bring The Good Education To Life',
                style: TextStyle(
                  fontSize: isMobile ? 15 : 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: isMobile ? 5 : 10),
              if (isMobile)
                Column(
                  children: [
                    Image.asset(
                      'assets/images/Frame 6551.png', // Replace with your image asset
                      width: width * 0.9,
                      height: width * 0.9 * 1.2, // Maintain aspect ratio
                    ),
                    SizedBox(height: isMobile ? 5 : 15),
                    const Text(
                      'Let Your Education Do The Walking',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 15),
                    buildBulletPoints(isMobile),
                  ],
                )
              else
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/images/Frame 6551.png', // Replace with your image asset
                      width: width * 0.4,
                      height: width * 0.4 * 1.2, // Maintain aspect ratio
                    ),
                    const SizedBox(width: 50),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Let Your Education Do The Walking',
                            style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 20),
                          buildBulletPoints(isMobile),
                        ],
                      ),
                    ),
                  ],
                ),
            ],
          ),
        );
      },
    );
  }

  Widget buildBulletPoints(bool isMobile) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildBulletPoint('Free E-book, Videos and kits',
            'assets/icons/bi_book (1).png', isMobile),
        SizedBox(height: isMobile ? 10 : 30),
        buildBulletPoint('Learn at your own pace',
            'assets/icons/ant-design_field-time-outlined.png', isMobile),
        SizedBox(height: isMobile ? 10 : 30),
        buildBulletPoint('Collaborate with different learners around the globe',
            'assets/icons/fe_shopping-bag.png', isMobile),
        SizedBox(height: isMobile ? 10 : 30),
        buildBulletPoint('Top instructors around the globe',
            'assets/icons/ci_group (1).png', isMobile),
      ],
    );
  }

  Widget buildBulletPoint(String text, String imagePath, bool isMobile) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Color(0xFFDDFFFF),
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.all(isMobile ? 8 : 15),
            child: Image.asset(
              imagePath,
              width: isMobile ? 20 : 30,
              height: isMobile ? 20 : 30,
              color: Colors
                  .teal, // You can remove this if the image already has the desired color
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: isMobile ? 14 : 30,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

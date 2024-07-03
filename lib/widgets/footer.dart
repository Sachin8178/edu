// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class WiSchoolFooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return _buildLargeScreenFooter();
        } else {
          return _buildSmallScreenFooter();
        }
      },
    );
  }

  Widget _buildLargeScreenFooter() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 48.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildAboutSection(),
              _buildLinkColumns(),
            ],
          ),
          const SizedBox(height: 100.0),
          _buildSubscribeSection(),
        ],
      ),
    );
  }

  Widget _buildSmallScreenFooter() {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSubscribeSection(),
          const SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildLinkList([
                'Home',
                'Services',
                'Training',
                'Resources',
                'About Us',
              ]),
              _buildLinkList([
                'SME',
                'Solution',
                'Reviews',
                'Blog',
              ]),
              _buildLinkList([
                'Contact Us',
                'Place A Call',
                'Email',
                'WiSchool@Gmail.Com',
              ]),
            ],
          ),
          const SizedBox(height: 32.0),
          const Text(
            'WiSchool',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8.0),
          const Row(
            children: [
              Icon(Icons.facebook, color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(
                  AssetImage(
                    'assets/icons/Vector (3).png',
                  ),
                  color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(AssetImage('assets/icons/Vector (4).png'),
                  color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(AssetImage('assets/icons/Vector (5).png'),
                  color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAboutSection() {
    return const Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'WiSchool',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.0),
          Text(
            'we are not here to sell you products, we sell value through our expertise.',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 16.0),
          Row(
            children: [
              Icon(Icons.facebook, color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(
                  AssetImage(
                    'assets/icons/Vector (3).png',
                  ),
                  color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(AssetImage('assets/icons/Vector (4).png'),
                  color: Colors.green),
              SizedBox(width: 8.0),
              ImageIcon(AssetImage('assets/icons/Vector (5).png'),
                  color: Colors.green),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLinkColumns() {
    return Expanded(
      flex: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildLinkList([
            'Home',
            'Services',
            'Training',
            'Resources',
            'About Us',
          ]),
          _buildLinkList([
            'SME',
            'Solution',
            'Reviews',
            'Blog',
          ]),
          _buildLinkList([
            'Contact Us',
            'Place A Call',
            'Email',
            'WiSchool@Gmail.Com',
          ]),
          _buildLinkList([
            'Job Opening',
            'News',
            'Research',
          ]),
          _buildLinkList([
            'UK Privacy Policy',
            'Terms Of Use',
          ]),
        ],
      ),
    );
  }

  Widget _buildLinkList(List<String> links) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: links
          .map((link) => Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(link, style: const TextStyle(color: Colors.white)),
              ))
          .toList(),
    );
  }

  Widget _buildSubscribeSection() {
    return Center(
      child: SizedBox(
        width: 500.0, // Adjust the width to make it less wide
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Subscribe to get latest updates',
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            const SizedBox(height: 16.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Your Email address',
                        hintStyle: TextStyle(color: Colors.green),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8.0),
                          ),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 32.0),
                      backgroundColor: Colors.green, // Button color
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(8.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      // Handle subscription button click
                    },
                    child: const Text('Subscribe',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

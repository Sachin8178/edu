// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors, file_names, prefer_const_declarations, duplicate_ignore

import 'package:edu/model/courses.dart';

import 'package:flutter/material.dart';

class AndroidPopularCoursesSection extends StatelessWidget {
  final List<Course> courses; // List of courses to display
  final String sectionTitle; // Title of the section

  const AndroidPopularCoursesSection({
    required this.courses,
    required this.sectionTitle,
  });

  @override
  Widget build(BuildContext context) {
    // Determine the number of cross axis items based on screen width
    final crossAxisCount = 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                sectionTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextButton.icon(
                onPressed: () {
                  // Implement your "See all" functionality here
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, // Adjust the color as needed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                label: const Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                icon: ImageIcon(
                  AssetImage('assets/icons/ic_round-less-than.png'),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount, // Adjusted cross axis count
            childAspectRatio:
                3 / 3.5, // Adjusted aspect ratio for Android screens
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return _buildAndroidPopularCourseItem(courses[index]);
          },
        ),
      ],
    );
  }

  Widget _buildAndroidPopularCourseItem(Course course) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              course.imagePath,
              fit: BoxFit.cover,
              height: 90, // Adjusted height for smaller screens
              width: double.infinity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        course.title,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const Icon(Icons.star, color: Colors.green, size: 12),
                    const SizedBox(width: 2),
                    Text(
                      '${course.rating}',
                      style: const TextStyle(
                        fontSize: 10,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  course.price,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                const SizedBox(height: 7),
                Row(
                  children: [
                    Text(
                      course.duration,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(width: 2),
                    Icon(Icons.people, size: 10, color: Colors.grey[600]),
                    Text(
                      course.studentsCount,
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 8),
                const Row(
                  children: [
                    // Add additional rows or widgets here if needed
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

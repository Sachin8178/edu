// ignore_for_file: use_key_in_widget_constructors, unnecessary_const, unused_element, must_be_immutable
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:edu/model/courses.dart';
import 'package:edu/widgets/AndroidPopularCoursesSection.dart';
import 'package:edu/widgets/featureI_item.dart';
import 'package:edu/widgets/footer.dart';
import 'package:edu/widgets/studentsection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/app_text_styles.dart';
import '../constants/app_strings.dart';
import '../widgets/custom_button.dart';

import '../widgets/popular_course_item.dart';

class HomeScreen extends StatelessWidget {
  List<Course> courses = [
    Course(
      title: 'Learn Marketing From Top Instructors',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Front-End Development Is Not Hard As You Think',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Everything You Need To Know In UX',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Learn Photography With Ease',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Be A Pro In Data Analysis',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Ethical Hacking Is Not Hard As You Think',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    // Add more courses as needed
  ];

  List<Course> courses2 = [
    Course(
      title: 'Learn Marketing From Top Instructors',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Front-End Development Is Not Hard As You Think',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
    Course(
      title: 'Everything You Need To Know In UX',
      imagePath: 'assets/images/Frame 6530.png',
      rating: 4.5,
      price: '30.5\$',
      duration: '6 weeks',
      studentsCount: '1.5k Students',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    bool isLargeScreen = MediaQuery.of(context).size.width > 800;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/wischool.svg',
                height: 40,
              ),
              const Spacer(),
              if (isLargeScreen) _buildTextButton(AppStrings.home),
              if (isLargeScreen) _buildTextButton(AppStrings.courses),
              if (isLargeScreen) _buildTextButton(AppStrings.instructors),
              if (isLargeScreen) _buildTextButton(AppStrings.student),
              if (isLargeScreen) _buildTextButton(AppStrings.contactUs),
              const Spacer(),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: isLargeScreen ? 30.0 : 0),
            child: Row(
              children: [
                if (isLargeScreen)
                  IconButton(
                    icon: const Icon(Icons.search, color: Colors.black),
                    onPressed: () {
                      // Implement search functionality
                    },
                  ),
                if (isLargeScreen)
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      AppStrings.login,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                if (isLargeScreen)
                  CustomButton(
                    text: AppStrings.register,
                    onPressed: () {},
                  ),
                if (!isLargeScreen)
                  IconButton(
                    icon: const Icon(Icons.person, color: Colors.black),
                    onPressed: () {
                      // Implement profile functionality
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
      drawer: !isLargeScreen
          ? Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  const DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Text(
                      'WiSchool',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text(AppStrings.home),
                    onTap: () {
                      // Navigate to home
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.book),
                    title: const Text(AppStrings.courses),
                    onTap: () {
                      // Navigate to courses
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text(AppStrings.instructors),
                    onTap: () {
                      // Navigate to instructors
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.school),
                    title: const Text(AppStrings.student),
                    onTap: () {
                      // Navigate to student
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_mail),
                    title: const Text(AppStrings.contactUs),
                    onTap: () {
                      // Navigate to contact us
                    },
                  ),
                ],
              ),
            )
          : null,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 70.0, vertical: 70.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeroSection(),
                  const SizedBox(height: 32),
                  ResponsiveFeatureItems(),
                  const SizedBox(height: 100),
                  _buildCategorySection(),
                  const SizedBox(height: 32),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 600) {
                        // Use AndroidPopularCoursesSection for small screens
                        return AndroidPopularCoursesSection(
                          courses: courses,
                          sectionTitle: AppStrings.mostPopularCourses,
                        );
                      } else {
                        // Use PopularCoursesSection for larger screens
                        return PopularCoursesSection(
                          courses: courses,
                          sectionTitle: AppStrings.mostPopularCourses,
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth < 600) {
                        // Use AndroidPopularCoursesSection for small screens
                        return AndroidPopularCoursesSection(
                          courses: courses,
                          sectionTitle: AppStrings.mostPopularCourses,
                        );
                      } else {
                        // Use PopularCoursesSection for larger screens
                        return PopularCoursesSection(
                          courses: courses2,
                          sectionTitle: AppStrings.mostPopularCourses,
                        );
                      }
                    },
                  ),
                  const SizedBox(height: 32),
                  StudentSection(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
            // WiSchoolFooterWidget will fit the screen without additional padding
            WiSchoolFooterWidget(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextButton(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 121, 122, 122),
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = MediaQuery.of(context).size.width;

        bool isLargeScreen = screenWidth > 800;
        double textFontSize = isLargeScreen ? 60 : 40;
        double imageWidth = isLargeScreen
            ? constraints.maxWidth * 0.5
            : constraints.maxWidth * 0.9;

        return Padding(
          padding: EdgeInsets.symmetric(
              vertical: isLargeScreen ? 50 : 20, horizontal: 20),
          child: isLargeScreen
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                AppStrings.qualityEducation,
                                style: TextStyle(
                                  fontSize: textFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                AppStrings.education,
                                style: TextStyle(
                                  fontSize: textFontSize,
                                  fontWeight: FontWeight.bold,
                                  color: const Color.fromARGB(255, 20, 224, 47),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Text(
                            AppStrings.byAnyMeansNecessary,
                            style: TextStyle(
                              fontSize: textFontSize,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 20),
                          CustomButton(
                            text: AppStrings.getStarted,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Center(
                        child: Container(
                          constraints: BoxConstraints(maxWidth: imageWidth),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/Frame 6514.png',
                              width: imageWidth,
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.qualityEducation,
                      style: TextStyle(
                        fontSize: textFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      AppStrings.education,
                      style: TextStyle(
                        fontSize: textFontSize,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 20, 224, 47),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      AppStrings.byAnyMeansNecessary,
                      style: TextStyle(
                        fontSize: textFontSize,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomButton(
                      text: AppStrings.getStarted,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 40),
                    Center(
                      child: Container(
                        constraints: BoxConstraints(maxWidth: imageWidth),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/Frame 6514.png',
                            width: imageWidth,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }

  Widget _buildCategorySection() {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        bool isSmallScreen = screenWidth < 600;
        double categoryCardWidth = isSmallScreen ? 200 : 300;
        double categoryCardHeight = isSmallScreen ? 300 : 500;
        double headerFontSize = isSmallScreen ? 20 : 30;
        double seeAllFontSize = isSmallScreen ? 14 : 20;
        double cardFontSize = isSmallScreen ? 14 : 20;
        EdgeInsets padding = isSmallScreen
            ? const EdgeInsets.symmetric(horizontal: 8)
            : const EdgeInsets.symmetric(horizontal: 16);

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: padding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      AppStrings.chooseCategory,
                      style: AppTextStyles.header
                          .copyWith(fontSize: headerFontSize),
                      overflow: TextOverflow.visible,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement your "See all" functionality here
                    },
                    child: Text(
                      AppStrings.seeAll,
                      style: TextStyle(
                        fontSize: seeAllFontSize,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 146, 144, 144),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 0),
            if (kIsWeb && !isSmallScreen) ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.keyboard_arrow_left_outlined,
                          color: Colors.green),
                    ),
                    onPressed: () {
                      // Implement scroll to left functionality
                    },
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(width: 16),
                          _buildCategoryCard(
                            AppStrings.marketing,
                            'assets/images/Component 21.png',
                            categoryCardWidth,
                            categoryCardHeight,
                            cardFontSize,
                          ),
                          const SizedBox(width: 16),
                          _buildCategoryCard(
                            AppStrings.design,
                            'assets/images/Component 21.png',
                            categoryCardWidth,
                            categoryCardHeight,
                            cardFontSize,
                          ),
                          const SizedBox(width: 16),
                          _buildCategoryCard(
                            AppStrings.programming,
                            'assets/images/Component 21.png',
                            categoryCardWidth,
                            categoryCardHeight,
                            cardFontSize,
                          ),
                          const SizedBox(width: 16),
                          _buildCategoryCard(
                            AppStrings.technology,
                            'assets/images/Component 21.png',
                            categoryCardWidth,
                            categoryCardHeight,
                            cardFontSize,
                          ),
                          const SizedBox(width: 16),
                        ],
                      ),
                    ),
                  ),
                  IconButton(
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.keyboard_arrow_right_outlined,
                          color: Colors.green),
                    ),
                    onPressed: () {
                      // Implement scroll to right functionality
                    },
                  ),
                ],
              ),
            ] else ...[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    _buildCategoryCard(
                      AppStrings.marketing,
                      'assets/images/Component 21.png',
                      categoryCardWidth,
                      categoryCardHeight,
                      cardFontSize,
                    ),
                    const SizedBox(width: 16),
                    _buildCategoryCard(
                      AppStrings.design,
                      'assets/images/Component 21.png',
                      categoryCardWidth,
                      categoryCardHeight,
                      cardFontSize,
                    ),
                    const SizedBox(width: 16),
                    _buildCategoryCard(
                      AppStrings.programming,
                      'assets/images/Component 21.png',
                      categoryCardWidth,
                      categoryCardHeight,
                      cardFontSize,
                    ),
                    const SizedBox(width: 16),
                    _buildCategoryCard(
                      AppStrings.technology,
                      'assets/images/Component 21.png',
                      categoryCardWidth,
                      categoryCardHeight,
                      cardFontSize,
                    ),
                    const SizedBox(width: 16),
                  ],
                ),
              ),
            ],
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }

  Widget _buildCategoryCard(
    String categoryName,
    String imagePath,
    double width,
    double height,
    double fontSize,
  ) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.transparent,
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 16,
          child: Text(
            categoryName,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLearnNewSkillSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 16),
        PopularCoursesSection(
          courses: courses2,
          sectionTitle: AppStrings.learnNewSkill,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}



  //


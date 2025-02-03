import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class BuildIndicator extends StatelessWidget {
  const BuildIndicator({super.key, required this.count, required this.currentPage});

  final int currentPage;
  final int count;

  @override
  Widget build(BuildContext context) {
     return AnimatedSmoothIndicator(
      effect: const ExpandingDotsEffect(
          dotWidth: 5,
          dotHeight: 5,
          activeDotColor: Colors.white,

      ),
      activeIndex: currentPage, count: count,
    );
  }
}
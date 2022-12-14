import 'package:flutter/material.dart';
import 'package:the_basics/widget/call_to_action/call_to_action.dart';
import 'package:the_basics/widget/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: const [
          CourseDetails(),
          SizedBox(height: 100),
          CallToAction("Join Course")
        ],
      );
    });
  }
}

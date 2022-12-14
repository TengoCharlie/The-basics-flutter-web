import 'package:flutter/material.dart';
import 'package:the_basics/widget/call_to_action/call_to_action.dart';
import 'package:the_basics/widget/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      CourseDetails(),
      Expanded(
        child: Center(
          child: CallToAction("Join Course"),
        ),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:the_basics/widget/call_to_action/call_to_action.dart';
import 'package:the_basics/widget/centered_view/centered_view.dart';
import 'package:the_basics/widget/course_details/course_details.dart';
import 'package:the_basics/widget/navigation_bar/navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
          child: Column(children: [
        const NavBar(),
        Expanded(
          child: Row(children: const [
            CourseDetails(),
            Expanded(
              child: Center(
                child: CallToAction("Join Course"),
              ),
            )
          ]),
        )
      ])),
    );
  }
}

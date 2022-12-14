import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/home/home_content_desktop.dart';
import 'package:the_basics/views/home/home_content_mobile.dart';
import 'package:the_basics/widget/centered_view/centered_view.dart';
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
          child: ScreenTypeLayout(
            mobile: const HomeContentMobile(),
            desktop: const HomeContentDesktop(),
          ),
        )
      ])),
    );
  }
}

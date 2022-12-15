import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/services/navigation_Service.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: GestureDetector(
        onTap: () {
          locator<NavigationService>().navigateTo(HomeRoute);
        },
        child: Image.asset('logo.png'),
      ),
    );
  }
}

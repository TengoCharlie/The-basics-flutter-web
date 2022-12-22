import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/routing/route_names.dart';
import 'package:the_basics/routing/router.dart';
import 'package:the_basics/services/navigation_service.dart';

import 'package:the_basics/widget/centered_view/centered_view.dart';
import 'package:the_basics/widget/nav_drawer/navigation_drawer.dart'
    as navDrawer;
import 'package:the_basics/widget/navigation_bar/navigation_bar.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const navDrawer.NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: CenteredView(
            child: Column(
              children: [
                NavBar(),
                Expanded(
                  child: Navigator(
                    key: locator<NavigationService>().navigatorKey,
                    onGenerateRoute: generateRoute,
                    initialRoute: HomeRoute,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

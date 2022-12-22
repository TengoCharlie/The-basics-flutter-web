import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';
import 'package:the_basics/extensions/hover_extensions.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/services/navigation_service.dart';
import 'package:the_basics/widget/navbar_item/navbar_item_desktop.dart';
import 'package:the_basics/widget/navbar_item/navbar_item_mobile.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData? icon;
  const NavbarItem(this.title, this.navigationPath, {super.key, this.icon});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: icon,
    );
    return GestureDetector(
      onTap: () {
        // DON'T EVER USE A SERVICE DIRECTLY IN THE UI TO CHANGE ANY KIND OF STATE
        // SERVICES SHOULD ONLY BE USED FROM A VIEWMODEL
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: NavBarItemTabletDesktop(),
          mobile: NavBarItemMobile(),
        ).showCursorOnHover,
      ),
    );
  }
}

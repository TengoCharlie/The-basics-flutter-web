import 'package:flutter/material.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;
  const NavBarItemTabletDesktop({super.key, required this.model});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Text(
      model.title!,
      style: const TextStyle(fontSize: 18),
    );
  }
}

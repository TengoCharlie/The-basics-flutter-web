import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stacked/stacked.dart';
import 'package:the_basics/datamodels/navbar_item_model.dart';

class NavBarItemTabletDesktop extends ViewModelWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
    return Text(
      model.title!,
      style: const TextStyle(fontSize: 18),
    );
  }
}

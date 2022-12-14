import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  const CenteredView({Key? key, required this.child}) : super(key: key);

  get getViewHeight =>
      window.screen!.height! *
      ((window.screen!.height! - kToolbarHeight - kBottomNavigationBarHeight) /
          window.screen!.height!);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 60),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(
            maxWidth: 1200,
            minWidth: 300,
            maxHeight: kIsWeb
                ? getViewHeight
                : MediaQuery.of(context).size.height * 0.7),
        child: child,
      ),
    );
  }
}

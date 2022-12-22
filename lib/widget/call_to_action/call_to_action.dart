import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/extensions/hover_extensions.dart';
import 'package:the_basics/widget/call_to_action/call_to_action_mobile.dart';
import 'package:the_basics/widget/call_to_action/call_to_action_tablet_desktop.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
            tablet: CallToActionTabletDesktop(title),
            mobile: CallToActionMobile(title))
        .showCursorOnHover
        .moveUpOnHover;
  }
}

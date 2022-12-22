import 'package:flutter/material.dart';
import 'dart:html' as html;

import 'package:the_basics/extensions/translate_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer = html.window.document.querySelector('body');
  static final appContainer2 =
      html.window.document.querySelector('flt-glass-pane');

  Widget get showCursorOnHover {
    return MouseRegion(
        child: this,
        onHover: (event) {
          appContainer?.style.cursor = 'pointer';
          appContainer2?.style.cursor = 'pointer';
        },
        onExit: (event) {
          appContainer?.style.cursor = 'default';
          appContainer2?.style.cursor = 'default';
        });
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }
}

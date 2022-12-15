import 'package:flutter/material.dart';
import 'package:the_basics/locator.dart';
import 'package:the_basics/views/home/home_view.dart';
import 'package:the_basics/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme:
              Theme.of(context).textTheme.apply(fontFamily: 'Open Sans')),
      home: const LayoutTemplate(),
    );
  }
}

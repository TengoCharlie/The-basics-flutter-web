import 'package:flutter/material.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  const NavbarItem(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
      ),
    );
  }
}

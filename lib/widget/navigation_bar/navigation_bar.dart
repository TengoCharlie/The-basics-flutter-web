import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 80,
            width: 150,
            child: Image.asset('logo.png'),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const [
              _NavbarItem('Episodes'),
              SizedBox(width: 60),
              _NavbarItem('About')
            ],
          )
        ],
      ),
    );
  }
}

class _NavbarItem extends StatelessWidget {
  final String title;
  const _NavbarItem(this.title);

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

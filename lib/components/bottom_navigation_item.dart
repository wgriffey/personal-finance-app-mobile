import 'package:flutter/material.dart';
import 'package:personalfinanceapp/pages/main_page.dart';

class AppBottomNavigationItem extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final MenusEnum current;
  final MenusEnum name;
  const AppBottomNavigationItem({super.key, required this.onPressed, required this.icon, required this.current, required this.name});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: current == name ? Colors.black : Colors.black.withOpacity(0.3),
        size: 35,
      ),
    );
  }
}
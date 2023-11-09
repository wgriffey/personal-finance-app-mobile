import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final double? size;
  const UserAvatar({super.key, this.size = 40});
  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      child: Image.asset(
        'assets/temp/profile_pic.jpg',
        width: size,
        height: size,
      ),
    );
  }
}

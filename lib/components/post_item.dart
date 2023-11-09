import 'package:flutter/material.dart';

import '../styles/app_text.dart';

class PostItem extends StatelessWidget {
  const PostItem({super.key, required this.user});

  final String user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/temp/profile_pic.jpg',
                height: 40,
                width: 40,
              ),
              const SizedBox(
                width: 16,
              ),
              Text(
                user,
                style: AppText.subtitle3,
              )
            ],
          ),
          SizedBox(
            height: 12,
          ),
          Image.asset(
            'assets/temp/post_pic.jpg',
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'I love this city!',
            style: AppText.subtitle3,
          )
        ],
      ),
    );
  }
}

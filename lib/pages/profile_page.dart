import 'package:flutter/material.dart';
import 'package:personalfinanceapp/components/tool_bar.dart';
import 'package:personalfinanceapp/components/user_avatar.dart';
import 'package:personalfinanceapp/pages/edit_profile_page.dart';
import 'package:personalfinanceapp/pages/login_page.dart';
import 'package:personalfinanceapp/styles/app_colors.dart';

import '../constants/app_strings.dart';
import '../styles/app_text.dart';

enum ProfileMenu {
  edit,
  logout,
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(
        title: AppStrings.profile,
        actions: [
          PopupMenuButton<ProfileMenu>(
            onSelected: (value) {
              switch (value) {
                case ProfileMenu.edit:
                  Navigator.of(context).push(MaterialPageRoute(builder:(context) => EditProfilePage(),));
                  break;
                case ProfileMenu.logout:
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder:(context) => const LoginPage(),), (route) => false);
                  break;
              }
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text(AppStrings.editProfile),
                  value: ProfileMenu.edit,
                ),
                PopupMenuItem(
                  child: Text(AppStrings.logout),
                  value: ProfileMenu.logout,
                ),
              ];
            },
            shadowColor: AppColors.background,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          UserAvatar(size: 90,),
          SizedBox(
            height: 24,
          ),
          Text(
            'Michael Jackson',
            style: AppText.header2,
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            'Fort Collins, Colorado',
            style: AppText.subtitle3,
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text('458', style: AppText.header2),
                  Text(AppStrings.followers),
                ],
              ),
              Column(
                children: [
                  Text(
                    '20',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.following),
                ],
              ),
              Column(
                children: [
                  Text(
                    '800',
                    style: AppText.header2,
                  ),
                  Text(AppStrings.posts),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            height: 40,
          ),
        ],
      ),
    );
  }
}

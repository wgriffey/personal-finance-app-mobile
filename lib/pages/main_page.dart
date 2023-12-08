import 'package:flutter/material.dart';
import 'package:personalfinanceapp/components/bottom_navigation_item.dart';
import 'package:personalfinanceapp/pages/home_page.dart';
import 'package:personalfinanceapp/pages/profile_page.dart';
import 'package:personalfinanceapp/styles/app_colors.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  MenusEnum currentPage = MenusEnum.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages[currentPage.index],
      bottomNavigationBar: AppBottomNavigation(
        current: currentPage,
        onTap: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
    );
  }

  final pages = [
    HomePage(),
    Center(
      child: Text('Favorite'),
    ),
    Center(
      child: Text('Add Post'),
    ),
    Center(
      child: Text('Messages'),
    ),
    ProfilePage(),
  ];
}

enum MenusEnum { home, favorite, add, message, user }

class AppBottomNavigation extends StatelessWidget {
  final MenusEnum current;
  final ValueChanged<MenusEnum> onTap;
  const AppBottomNavigation(
      {super.key, required this.current, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 87,
      margin: EdgeInsets.all(12),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 17,
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: AppBottomNavigationItem(
                      onPressed: () {
                        onTap(MenusEnum.home);
                      },
                      icon: Icons.home_outlined,
                      current: current,
                      name: MenusEnum.home,
                    ),
                  ),
                  Expanded(
                    child: AppBottomNavigationItem(
                      onPressed: () {
                        onTap(MenusEnum.favorite);
                      },
                      icon: Icons.favorite_border_outlined,
                      current: current,
                      name: MenusEnum.favorite,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    child: AppBottomNavigationItem(
                      onPressed: () {
                        onTap(MenusEnum.message);
                      },
                      icon: Icons.chat_bubble_outline,
                      current: current,
                      name: MenusEnum.message,
                    ),
                  ),
                  Expanded(
                    child: AppBottomNavigationItem(
                      onPressed: () {
                        onTap(MenusEnum.user);
                      },
                      icon: Icons.person_outlined,
                      current: current,
                      name: MenusEnum.user,
                    )
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => onTap(MenusEnum.add),
              child: Container(
                height: 64,
                width: 64,
                decoration: BoxDecoration(
                    color: AppColors.primary, shape: BoxShape.circle),
                child: Icon(
                  Icons.add_outlined,
                  size: 40,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

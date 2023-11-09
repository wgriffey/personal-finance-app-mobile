import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalfinanceapp/pages/home_page.dart';
import 'package:personalfinanceapp/pages/login_page.dart';
import 'package:personalfinanceapp/pages/profile_page.dart';
import 'package:personalfinanceapp/styles/app_colors.dart';

import 'pages/main_page.dart';

void main() {
  runApp(const PersonalFinanceApp());
}

class PersonalFinanceApp extends StatelessWidget {
  const PersonalFinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        fontFamily: 'FiraSans',
        scaffoldBackgroundColor: AppColors.background,
        brightness: Brightness.dark,
      ),
    );
  }
}

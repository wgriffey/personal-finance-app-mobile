import 'package:flutter/material.dart';
import 'package:personalfinanceapp/styles/app_colors.dart';

import '../styles/app_text.dart';

class ToolBar extends StatelessWidget implements PreferredSizeWidget{
  final String title;
  final List<Widget>? actions;
  const ToolBar({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: AppText.header1,),
      backgroundColor: AppColors.background,
      centerTitle: false,
      actions: actions,
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(55);
}
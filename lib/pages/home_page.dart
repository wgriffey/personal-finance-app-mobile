import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personalfinanceapp/components/post_item.dart';

import '../components/tool_bar.dart';
import '../constants/app_strings.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsersFromServer();
    return Scaffold(
        appBar: ToolBar(
          title: AppStrings.home,
          actions: [
            IconButton(
              onPressed: () {
                return;
              },
              icon: Icon(Icons.location_on_outlined),
            ),
          ],
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 24,
            );
          },
          itemCount: users.length,
        ));
  }

  void mockUsersFromServer() {
    for (var i = 0; i <= 10000; i++) {
      users.add('User number $i');
    }
  }
}

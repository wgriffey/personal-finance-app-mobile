import 'package:flutter/material.dart';
import 'package:personalfinanceapp/components/app_text_field.dart';
import 'package:personalfinanceapp/components/tool_bar.dart';
import 'package:personalfinanceapp/components/user_avatar.dart';
import 'package:personalfinanceapp/styles/app_colors.dart';

import '../constants/app_strings.dart';
import '../styles/app_text.dart';

enum Gender { male, female, other, none }

class EditProfilePage extends StatefulWidget {
  EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ToolBar(title: AppStrings.editProfile),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: UserAvatar(
                      size: 120,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      child: Icon(
                        Icons.edit,
                        color: AppColors.black,
                        size: 25,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      width: 30,
                    ),
                    bottom: 10,
                    right: 0,
                    top: 100,
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              AppTextField(hint: AppStrings.firstName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.lastName),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.phoneNumber),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.location),
              SizedBox(
                height: 16,
              ),
              AppTextField(hint: AppStrings.birthday),
              SizedBox(
                height: 16,
              ),
              Container(
                padding: EdgeInsets.only(left: 12, right: 12, top: 6),
                decoration: BoxDecoration(
                    color: AppColors.fieldColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.gender,
                      style: AppText.body1.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: RadioListTile(
                            title: Text('Male'),
                            contentPadding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.male,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ?? Gender.none;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text('Female'),
                            contentPadding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.female,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ?? Gender.none;
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: Text('Other'),
                            contentPadding: EdgeInsets.zero,
                            visualDensity: const VisualDensity(
                              horizontal: VisualDensity.minimumDensity,
                              vertical: VisualDensity.minimumDensity,
                            ),
                            value: Gender.other,
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value ?? Gender.none;
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/widgets/setting_body_widget.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Language',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SettingBodyWidget(
              text: 'English',
              optionOne: 'English',
              optionTwo: 'Arabic',
            ),
            SizedBox(height: 10.h),
            Text(
              'Theme',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SettingBodyWidget(
              text: 'Light Theme',
              optionOne: 'Light Theme',
              optionTwo: 'Dark Theme',
            )
          ],
        ),
      ),
    );
  }
}

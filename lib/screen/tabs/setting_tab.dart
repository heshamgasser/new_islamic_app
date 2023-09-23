

import 'package:flutter/material.dart';

class SettingTab extends StatelessWidget {
  const SettingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/image/background.png'), fit: BoxFit.fill),
      ),
    );
  }
}

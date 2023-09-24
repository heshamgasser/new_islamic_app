import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islamic/screen/tabs/hadeeth_tab.dart';
import 'package:islamic/screen/tabs/quraan_tab.dart';
import 'package:islamic/screen/tabs/radio_tab.dart';
import 'package:islamic/screen/tabs/sebha_tab.dart';
import 'package:islamic/screen/tabs/setting_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [QuraanTab(), HadeethTab(), SebhaTab(), RadioTab(), SettingTab()];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          child: Image.asset(ThemeMode.light == true ? 'assets/image/background.png' : 'assets/image/dark_bg.png', fit: BoxFit.fill),
        ),
        Scaffold(
          appBar: AppBar(
            title:
                Text('Islami', style: Theme.of(context).textTheme.titleLarge),
          ),
          body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: false,
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/moshaf_blue.png'),
                    size: 30.w,
                  ),
                  label: 'Quraan',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/hageeth.png'),
                    size: 30.w,
                  ),
                  label: 'Hadeeth',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/sebha_blue.png'),
                    size: 30.w,
                  ),
                  label: 'Sebha',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/image/radio_blue.png'),
                    size: 30.w,
                  ),
                  label: 'Radio',
                  backgroundColor: Theme.of(context).primaryColor),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings,  size: 30.w,),
                  label: 'Setting',
                  backgroundColor: Theme.of(context).primaryColor),
            ],
          ),
        ),
      ],
    );
  }
}

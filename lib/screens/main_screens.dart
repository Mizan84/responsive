import 'package:flutter/material.dart';
import '../layout/common_layout.dart';
import '../sections/half_screen_section.dart';
import '../sections/list_with_fourth_screen.dart';
import '../sections/list_with_third_screen.dart';
import '../sections/third_screen_section.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      bodyContent: Column(
        spacing: 100,
        children: [
          SizedBox(height: 50,),
          HalfScreenSection(),
          ThirdScreenSection(),
          ListWithThirdScreen(),
          ListWithFourthScreen(),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tutorial_responsive/layout/common_layout.dart';
import 'package:tutorial_responsive/sections/end_drawer_section.dart';
import 'package:tutorial_responsive/sections/half_screen_section.dart';
import 'package:tutorial_responsive/sections/header_section.dart';
import 'package:tutorial_responsive/sections/list_with_fourth_screen.dart';
import 'package:tutorial_responsive/sections/list_with_third_screen.dart';
import 'package:tutorial_responsive/sections/third_screen_section.dart';
import 'package:tutorial_responsive/util/responsive.dart';

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
          HalfScreenSection(),
          ThirdScreenSection(),
          ListWithThirdScreen(),
          ListWithFourthScreen(),
        ],
      ),
    );
  }
}

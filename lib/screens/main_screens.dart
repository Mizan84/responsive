import 'package:flutter/material.dart';
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
    return Scaffold(
      endDrawer: !Responsive.isDesktop(context)?EndDrawerSection():null,
      body: Stack(
        alignment: Responsive.isDesktop(context)
            ? Alignment.topCenter
            : Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getPadding(context),
                vertical: 150,
              ),
              child: Column(
                spacing: 100,
                children: [
                  HalfScreenSection(),
                  ThirdScreenSection(),
                  ListWithThirdScreen(),
                  ListWithFourthScreen(),
                ],
              ),
            ),
          ),
          HeaderSection(),
        ],
      ),
    );
  }
}

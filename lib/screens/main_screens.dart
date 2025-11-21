import 'package:flutter/material.dart';
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
      // appBar: AppBar(actions: [SizedBox()],),
      endDrawer: !Responsive.isDesktop(context)
          ? Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  left: BorderSide(color: Colors.black, width: .5),
                ),
              ),
              width: getScreenWidth(context) * 2 / 3,
              height: getScreenHeight(context),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(onPressed: () {}, child: Text('Home')),
                  TextButton(onPressed: () {}, child: Text('Button1')),
                  TextButton(onPressed: () {}, child: Text('Button2')),
                  TextButton(onPressed: () {}, child: Text('Button3')),
                  TextButton(onPressed: () {}, child: Text('Button4')),
                ],
              ),
            )
          : null,
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

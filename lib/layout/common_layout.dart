import 'package:flutter/material.dart';

import '../sections/end_drawer_section.dart';
import '../sections/footer_section.dart';
import '../sections/header_section.dart';
import '../util/responsive.dart';

class CommonLayout extends StatefulWidget {
  final Widget bodyContent;
  const CommonLayout({super.key, required this.bodyContent});

  @override
  State<CommonLayout> createState() => _CommonLayoutState();
}

class _CommonLayoutState extends State<CommonLayout> {
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
              child:Column(
                spacing: 100,
                children: [
                  widget.bodyContent,
                  FooterSection(),
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

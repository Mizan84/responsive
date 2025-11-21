import 'package:flutter/material.dart';
import 'package:tutorial_responsive/components/header_button.dart';

import '../util/responsive.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getScreenWidth(context),
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: getPadding(context)),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(30),
            blurRadius: 3,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        spacing: 30,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              child: Text(
                'Tutorial',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

          Expanded(
            child: Row(
              spacing: 18,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeaderButton(
                  icon: Icons.home_outlined,
                  text: 'Home',
                  ontap: () {},
                ),
                HeaderButton(
                  icon: Icons.design_services,
                  text: 'Services',
                  ontap: () {},
                ),
                HeaderButton(
                  icon: Icons.image,
                  text: 'Portfolio',
                  ontap: () {},
                ),
                HeaderButton(icon: Icons.menu_book, text: 'About', ontap: () {}),
                HeaderButton(icon: Icons.call, text: 'Contact', ontap: () {}),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            spacing: 15,
            children: [
              if (Responsive.isDesktop(context))
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    foregroundColor: Colors.white,
                  ),
                  child: Text('Button'),
                ),
              if (!Responsive.isDesktop(context))
                Builder(
                  builder: (context) => IconButton(
                    onPressed: () => Scaffold.of(context).openEndDrawer(),
                    icon: Icon(Icons.menu, color: Colors.indigo),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}

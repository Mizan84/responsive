import 'package:flutter/material.dart';

import '../util/responsive.dart';

class EndDrawerSection extends StatelessWidget {
  const EndDrawerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          left: BorderSide(color: Colors.black, width: .5),
        ),
      ),
      width: getScreenWidth(context) * 2 / 3,
      height: getScreenHeight(context),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40,),
          TextButton(onPressed: () {}, child: Text('Home')),
          TextButton(onPressed: () {}, child: Text('Services')),
          TextButton(onPressed: () {}, child: Text('Portfolio')),
          TextButton(onPressed: () {}, child: Text('About')),
          TextButton(onPressed: () {}, child: Text('Contact')),
        ],
      ),
    );
  }
}

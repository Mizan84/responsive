import 'package:flutter/cupertino.dart';
import 'package:tutorial_responsive/util/responsive.dart';

class HalfScreenSection extends StatelessWidget {
  const HalfScreenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenWidth(context),
      child: Wrap(
        spacing: 20,
        runSpacing: 30,
        alignment: WrapAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getHalfWidth(context),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  image: AssetImage('assets/images/1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            width: getHalfWidth(context),
            child: Column(
              spacing: 30,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet,',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis mauris eget elit blandit,',
                  style: TextStyle(),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis mauris eget elit blandit,',
                  style: TextStyle(),
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis mauris eget elit blandit,',
                  style: TextStyle(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

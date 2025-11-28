import 'package:flutter/cupertino.dart';

import '../util/responsive.dart';

class ThirdScreenSection extends StatelessWidget {
  const ThirdScreenSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: EdgeInsets.symmetric(horizontal: getPadding(context)),
      child: SizedBox(
        width: getScreenWidth(context),
        child: Wrap(
          verticalDirection: VerticalDirection.up,
          spacing: 20,
          runSpacing: 30,
          alignment: WrapAlignment.spaceBetween,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            SizedBox(
              width: getThirdWidth(context) * 2,
              child: Column(
                spacing: 30,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae rhoncus ipsum. Suspendisse sed molestie ligula, non sodales libero. Pellentesque gravida viverra nibh at molestie. ',
                    style: TextStyle(),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae rhoncus ipsum. Suspendisse sed molestie ligula, non sodales libero. Pellentesque gravida viverra nibh at molestie. ',
                    style: TextStyle(),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vitae rhoncus ipsum. Suspendisse sed molestie ligula, non sodales libero. Pellentesque gravida viverra nibh at molestie. ',
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: getThirdWidth(context),
              child: AspectRatio(
                aspectRatio: 1.5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    image: AssetImage('assets/images/2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../components/footer_text.dart';
import '../util/responsive.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(horizontal: getPadding(context),vertical: 80),
      width: getScreenWidth(context),
      color: Colors.blueGrey.shade600,
      child: Wrap(
        spacing: 10,
        runSpacing: 20,
        alignment: WrapAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getQuadWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {

                  },
                  child: Row(
                    spacing: 5,
                    children: [
                      SizedBox(
                        width: 120,
                        child: FittedBox(
                          child: Text(
                            'Tutorial',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 44,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 20),
                Text(
                  'In an ever-evolving market, businesses must embrace innovation and technology.',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          SizedBox(
            width: getQuadWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Useful Links',
                  style: TextStyle(fontSize: 24,color: Colors.white),
                ),
                SizedBox(height: 30),
                FooterText(
                  text: 'About Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Contact Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Services',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Blog',
                  ontap: () {

                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: getQuadWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Useful Links',
                  style: TextStyle(fontSize: 24,color: Colors.white),
                ),
                SizedBox(height: 30),
                FooterText(
                  text: 'About Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Contact Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Services',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Blog',
                  ontap: () {

                  },
                ),
              ],
            ),
          ),
          SizedBox(
            width: getQuadWidth(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Useful Links',
                  style: TextStyle(fontSize: 24,color: Colors.white),
                ),
                SizedBox(height: 30),
                FooterText(
                  text: 'About Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Contact Us',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Services',
                  ontap: () {

                  },
                ),
                FooterText(
                  text: 'Blog',
                  ontap: () {

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

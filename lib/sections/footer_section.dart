import 'package:flutter/material.dart';
import '../components/footer_text.dart';
import '../util/responsive.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: getPadding(context)),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 40),
              width: getScreenWidth(context),
              child: Wrap(
                spacing: 20,
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
                                      color: Colors.black,
                                      fontSize: 44,
                                      fontFamily: 'Main',
                                      fontVariations: [
                                        FontVariation('wght', 700),
                                      ],
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
                          style: TextStyle(fontSize: 24),
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
                          style: TextStyle(fontSize: 24),
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
                          style: TextStyle(fontSize: 24),
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
            ),
          ),


        ],
      ),
    );
  }
}

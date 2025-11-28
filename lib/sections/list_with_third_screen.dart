import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_responsive/data/tutorial_data.dart';
import 'package:tutorial_responsive/util/responsive.dart';

class ListWithThirdScreen extends StatelessWidget {
  const ListWithThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TutorialData data = TutorialData();
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: getPadding(context)),
      child: Column(
        spacing: 40,
        children: [
          Text('List With Third Screen',style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold),),
          SizedBox(
            width: getScreenWidth(context),
            child: Wrap(
              spacing: 20,
              runSpacing: 30,
              alignment: WrapAlignment.spaceBetween,
              children: List.generate(data.tutorialData.length, (index) {
                return Container(
                  width: getThirdWidth(context),
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Icon(data.tutorialData[index].icon, size: 100),
                      Text(
                        data.tutorialData[index].title,
                        maxLines: 1,
                        style: TextStyle(fontSize: 34,overflow: TextOverflow.ellipsis),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

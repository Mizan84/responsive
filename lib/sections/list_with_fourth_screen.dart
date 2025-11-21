import 'package:flutter/material.dart';
import 'package:tutorial_responsive/data/tutorial_data.dart';
import 'package:tutorial_responsive/util/responsive.dart';

class ListWithFourthScreen extends StatelessWidget {
  const ListWithFourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TutorialData data = TutorialData();
    return Column(
      spacing: 40,
      children: [
        Text('List With Fourth Screen',style: TextStyle(fontSize: 44,fontWeight: FontWeight.bold),),
        SizedBox(
          width: getScreenWidth(context),
          child: Wrap(
            spacing: 20,
            runSpacing: 30,
            alignment: WrapAlignment.spaceBetween,
            children: List.generate(data.tutorialData.length, (index) {
              return Container(
                clipBehavior: Clip.hardEdge,
                width: getQuadWidth(context),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  spacing: 10,
                  children: [
                    AspectRatio(
                        aspectRatio: 1.6,
                        child: Image(image: AssetImage('assets/images/${data.tutorialData[index].image}'),fit: BoxFit.cover,)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        data.tutorialData[index].title,
                        maxLines: 1,
                        style: TextStyle(fontSize: 22,overflow: TextOverflow.ellipsis),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

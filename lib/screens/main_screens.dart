import 'package:flutter/material.dart';
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
                children: [
                  SizedBox(
                    width: getScreenWidth(context),
                    child: Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      alignment: WrapAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: getHalfWidth(context),
                          child: AspectRatio(
                            aspectRatio: 1.5,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image(
                                image: AssetImage('assets/1.webp'),
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
                  ),
                  SizedBox(height: 80),
                  SizedBox(
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
                                image: AssetImage('assets/1.webp'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 80),
                  SizedBox(
                    width: getScreenWidth(context),
                    child: Wrap(
                      runSpacing: 40,
                      spacing: 10,
                      alignment: WrapAlignment.spaceBetween,
                      children: List.generate(8, (index) {
                        return SizedBox(
                          width: getQuadWidth(context),
                          child: Column(
                            spacing: 10,
                            children: [
                              AspectRatio(
                                aspectRatio: 1.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image(
                                    image: AssetImage('assets/3.webp'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sagittis mauris eget elit blandit,',
                                style: TextStyle(),
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
            ),
          ),

          Container(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (Responsive.isDesktop(context))
                  Text(
                    'Tutorial',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                if (Responsive.isDesktop(context))
                  Row(
                    children: [
                      TextButton(onPressed: () {}, child: Text('Home')),
                      TextButton(onPressed: () {}, child: Text('Button1')),
                      TextButton(onPressed: () {}, child: Text('Button2')),
                      TextButton(onPressed: () {}, child: Text('Button3')),
                      TextButton(onPressed: () {}, child: Text('Button4')),
                    ],
                  ),
                if(!Responsive.isDesktop(context))
                Row(children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.details)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
                ]),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  spacing: 15,
                  children: [
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
                          icon: Icon(Icons.menu),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

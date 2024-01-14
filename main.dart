import 'package:flutter/rendering.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark));
  return runApp(CurveApp());
}

Color colorPink = Color.fromRGBO(217, 108, 157, 1.0);
Color colorPurple = Color.fromRGBO(132, 61, 179, 1.0);
Color colorDarkPurple = Color.fromRGBO(19, 2, 38, 1.0);
Color colorBlue = Color.fromRGBO(143, 146, 181, 1.0);

class CurveApp extends StatelessWidget {
  const CurveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardActivity(),
      theme: ThemeData(fontFamily: 'Quicksand'),
    );
  }
}

class DashboardActivity extends StatelessWidget {
  const DashboardActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlue,
        body: Column(
      children: [
        TopPart(),
        PinkPart(),
        LightPurple(),
        DarkPurple(),

      ],
    ));
  }
}

class TopPart extends StatelessWidget {
  const TopPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: double.infinity,
      height: 140,
      color: colorPink,
      child: Material(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/image1.jpg'),
                        radius: 26,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'You',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.pink)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.trending_up, size: 28),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'TRENDING',
                      style: TextStyle(),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Icon(Icons.favorite_border,
                            color: Colors.grey, size: 28),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'HEALTH',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class PinkPart extends StatelessWidget {
  const PinkPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color: colorPurple,
      child: Material(
        color: colorPink,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "TODAY 5:30 PM",
                  style: TextStyle(fontSize: 12, color: Colors.white70),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Yoga and Meditation for Beginner",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,

                ),
                Row(
                  children: [
                    Container(
                      width: 50,
                      child: Stack(
                          children:[
                            Positioned(
                              left: 15,
                              child: Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width:3)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/image1.jpg'),
                                  radius: 14,
                                ),
                              ),
                            ),
                            Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white,width:3)
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/images/image1.jpg'),
                          radius: 14,
                        ),
                      ),
                           ]
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      "join Aronno,Data & 10 other ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white70,
                          fontStyle: FontStyle.italic),
                    ),
                  ],

                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
class LightPurple extends StatelessWidget {
  const LightPurple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color:colorDarkPurple,
      child: Material(
        color: colorPurple,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "TODAY 5:30 PM",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Practice Fence ,English & Chines",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,

                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        child: Stack(
                            children:[
                              Positioned(
                                left: 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white,width:3)
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/image1.jpg'),
                                    radius: 14,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width:3)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/image1.jpg'),
                                  radius: 14,
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "join Aronno,Data & 10 other ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class DarkPurple extends StatelessWidget {
  const DarkPurple({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      color:colorBlue,
      child: Material(
        color: colorDarkPurple,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
        child: Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "TODAY 6 PM",
                    style: TextStyle(fontSize: 12, color: Colors.white70),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Adobe XD Live enent in Europe",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,

                  ),
                  Row(
                    children: [
                      Container(
                        width: 50,
                        child: Stack(
                            children:[
                              Positioned(
                                left: 15,
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white,width:3)
                                  ),
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage('assets/images/image1.jpg'),
                                    radius: 14,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.white,width:3)
                                ),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/image1.jpg'),
                                  radius: 14,
                                ),
                              ),
                            ]
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "join Goma,Peach & 12 other ",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white70,
                            fontStyle: FontStyle.italic),
                      ),
                    ],

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


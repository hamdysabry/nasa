import 'package:flutter/material.dart';

class EarthNearByWidget extends StatelessWidget {
  String planeteName;
  String imagepath;
  String description;
  String title1;
  String description1_1;
  String description1_2;
  String title2;
  String description2_1;
  String description2_2;
  String title3;
  String description3_1;
  String description3_2;

  EarthNearByWidget(
      {required this.planeteName,
      required this.imagepath,
      required this.description,
      required this.title1,
      required this.description1_1,
      required this.description1_2,
      required this.title2,
      required this.description2_1,
      required this.description2_2,
      required this.title3,
      required this.description3_1,
      required this.description3_2});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(planeteName,
            style: TextStyle(
              color: Color(0xff0070C0),
            )),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Image.asset(imagepath),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          description,
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(title1,
            style: TextStyle(
              color: Color(0xff0070C0),
            )),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description1_1,
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description1_2,
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(title2,
            style: const TextStyle(
              color: Color(0xff0070C0),
            )),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description2_1,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description2_2,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Align(
        alignment: Alignment.topLeft,
        child: Text(title3,
            style: TextStyle(
              color: Color(0xff0070C0),
            )),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description3_1,
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          description3_2,
          style: TextStyle(color: Colors.white),
        ),
      ),
      SizedBox(
        height: height * 0.02,
      ),
    ]);
  }
}

import 'package:flutter/material.dart';

class ExoplaneteWidget extends StatelessWidget {
  String title;
  String imagepath;
  ExoplaneteWidget({required this.title, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
      SizedBox(
        height: height * 0.02,
      ),
      Image.asset(imagepath),
    ]);
  }
}

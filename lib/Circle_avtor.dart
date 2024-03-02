import 'package:flutter/material.dart';

class Circleavtorwidget extends StatelessWidget {
  String imgpath;
  String text;
   Circleavtorwidget({super.key,required this.imgpath,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Image.asset(imgpath),
        ),
        Text(text),
      ],
    );
  }
}

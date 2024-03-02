import 'package:flutter/material.dart';

class gridviewwidget extends StatelessWidget {
  String imgpath;
  String text;
  gridviewwidget({super.key,required this.text,required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[100],
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
        children: [
          Image(image: AssetImage(imgpath)),
           Text(text),
        ],
      ),
    );
  }
}

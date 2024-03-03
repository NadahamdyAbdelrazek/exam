import 'package:flutter/material.dart';

class widget extends StatelessWidget {
  String imgpath;
  String text;
  String number;
  String value;
   widget({super.key,required this.text,required this.imgpath,required this.number,required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Image.asset(imgpath,width: 16,height: 16,),
        Text(text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),),
      ],),
      Row(
        children: [
          Text(number,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
          Text(value,style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400)),
        ],
      ),

    ],);
  }
}

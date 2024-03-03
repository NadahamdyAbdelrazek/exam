import 'package:flutter/material.dart';

class choicechipwidget extends StatelessWidget {
  String text;
   choicechipwidget({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
        label: Text(text),
    selected: false,
    onSelected: (value) {},
    backgroundColor: Color(0xffF4EBFF),
     labelStyle: TextStyle(color: Color(0xff667085)),
     selectedColor: Color(0xffD6BBFB),
     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

    );
  }
}

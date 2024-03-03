import 'package:flutter/material.dart';

class alltypewidget extends StatelessWidget {
  String imagpath;
  String buttomtext;
  String text;
   alltypewidget({super.key,required this.imagpath,required this.text,required this.buttomtext});

  @override
  Widget build(BuildContext context) {
    return  Container(height: 174,width: 326,margin: EdgeInsets.all(12),
      decoration: BoxDecoration(color: Color(0xffF8F9FC),),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      buttomtext,
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffE4E7EC),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(35)),
                        padding: EdgeInsets.all(10))),
                Text(
                  text,
                  style:
                  TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Improve mental focus.",
                  style:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                  Icon(Icons.watch_later_outlined,size: 15,),
                  Text("30 mins",style:
                  TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                ],)

              ],
            ),
          ),
          Image.asset(imagpath,width: 146.96,height:
          118.49),

        ],
      ),
    );
  }
}

import 'package:exam/Alltype_widget.dart';
import 'package:exam/work%20up_widget.dart';
import 'package:flutter/material.dart';

import 'Bottom_Navigator_Bar.dart';
import 'Circle_avtor.dart';

class Workoutpage extends StatelessWidget {
  static const String routename = "workout";

  const Workoutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          backgroundImage: AssetImage("assets/images/Ellipse 10.png"),
        ),
        title: Column(
          children: [
            Text(
              "Hello, Jade",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Text(
              "Ready to workout?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Badge(
                smallSize: 8,
                child: Icon(
                  Icons.notifications,
                  size: 24,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(16),
                height: 82,
                width: double.infinity,
                decoration: BoxDecoration(color: Color(0xffF8F9FC)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  widget(
                      text: "Heart Rate",
                      imgpath: "assets/images/heart.png",
                      number: "81",
                      value: "BPM"),
                  VerticalDivider(
                    color: Color(0xffD9D9D9),
                    thickness: 2,
                    width: 50,
                  ),
                  widget(
                      text: "To-do",
                      imgpath: "assets/images/list.png",
                      number: "32,5",
                      value: "%"),
                  VerticalDivider(
                    color: Color(0xffD9D9D9),
                    thickness: 2,
                    width: 50,
                  ),
                  widget(
                      text: "Calo",
                      imgpath: "assets/images/Group.png",
                      number: "1000",
                      value: "Cal"),
                ])),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Workout Programs",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            DefaultTabController(
              length: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                    unselectedLabelColor: Color(0xff667085),
                    labelColor: Color(0xff363F72),
                    tabs: [
                      Tab(
                        text: "AllType",
                      ),
                      Tab(
                        text: "FullBody",
                      ),
                      Tab(
                        text: "Upper",
                      ),
                      Tab(
                        text: "Lower",
                      ),
                    ]),
              ),
            ),
           alltypewidget(imagpath: "assets/images/[removal 2.png", text: "Morning Yoga", buttomtext: "7 days"),
            alltypewidget(imagpath:"assets/images/pngwing 1.png" , text: "Plank Exercise", buttomtext: "3 days")
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigatorBar(
          icon: Icon(Icons.navigation), icondata: Icon(Icons.bar_chart)),
    );
  }
}

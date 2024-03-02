import 'package:exam/Circle_avtor.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'Bottom_Navigator_Bar.dart';
import 'Gide_view_widget.dart';

class HomeScreen extends StatelessWidget {
  static const routename = "homescreen";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Image(image: AssetImage("assets/images/logo.png")),
        title: Text(
          "Moody",
          style: TextStyle(fontWeight: FontWeight.w400, fontSize: 24),
        ),
        actions: [
          Badge(
              child: Icon(
                Icons.notifications,
                size: 24,
              ))
        ],
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Hello, Sara Rose",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("How are you feeling today ?",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
            ),
            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Circleavtorwidget(imgpath:"assets/images/Group.png" , text: "Love"),
                Circleavtorwidget(imgpath: "assets/images/Frame.png",text: "Cool"),
                Circleavtorwidget(imgpath: "assets/images/Frame (3).png", text: "Happy"),
                Circleavtorwidget(imgpath: "assets/images/Frame (6).png", text: "Sad")
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Feature",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("See more>", style: TextStyle(color: Colors.green)),
                )
              ],
            ),
            CarouselSlider(items: [
              Image.asset("assets/images/image slide.png"),
              Image.asset("assets/images/image slide.png"),
              Image.asset("assets/images/image slide.png"),
            ], options: CarouselOptions(height: 200)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Exercise",
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("See more>", style: TextStyle(color: Colors.green)),
                )
              ],
            ),
            Expanded(
              child: GridView.count(primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,children: [
                  gridviewwidget(text: "Relaxation",imgpath: "assets/images/image grid.png",),
                  gridviewwidget(text: 'Meditation', imgpath: "assets/images/medatation.png"),
                  gridviewwidget(text: 'Beathing', imgpath: "assets/images/Beathing.png"),
                  gridviewwidget(text: 'Yoga', imgpath: "assets/images/Yoga.png"),
                ],),
            )
          ],
        ),
      bottomNavigationBar:BottomNavigatorBar(),
    );
  }
}

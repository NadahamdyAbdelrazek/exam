import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:exam/choiceChip_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Alltype_widget.dart';

class Newspage extends StatefulWidget {
  static const String routename = "news";

  Newspage({super.key});

  @override
  State<Newspage> createState() => _NewspageState();
}

class _NewspageState extends State<Newspage> {
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/title.png"),
              SizedBox(
                width: 5,
              ),
              Text(
                "AliceCare",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView( 
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  onTap: () {},
                  enabled: true,
                  decoration: InputDecoration(fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12)),
                    prefixIcon: Icon(Icons.search),
                    hintText: "Articles, Video, Audio and More,..."
                  ),
                ),
              ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    choicechipwidget(text: "Discover",),
                    choicechipwidget(text: "News",),
                    choicechipwidget(text: "Most Viewed",),

                  ],
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Hot topics",
                      style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("See all>", style: TextStyle(color:Color(0xff5925DC))),
                  )
                ],
              ),
              CarouselSlider(items: [
                Image.asset("assets/images/slide.png"),
                Image.asset("assets/images/slide2.png"),
              ], options: CarouselOptions(height: 200)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Get Tips ",
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),
                ),
              ),
               Container(padding: EdgeInsets.all(12),child: Row(
                  children: [
                    Image.asset("assets/images/Doctor-PNG-Images 1.png"),
                    SizedBox(width: 200,
                      child: Column(children: [Text("Connect with doctors & get suggestions"),
                        Text("Connect now and get expert insights ",),
                        ElevatedButton(onPressed: (){}, child: Text("View detail"))
                      ],),
                    )
                  ],
                )
                  ,),
    ]
              )



              ),


        bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff363F72),
          unselectedItemColor: Color(0xff667085),

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today_outlined), label: "Today"),
            BottomNavigationBarItem(
                icon: Icon(Icons.grid_view), label: "Insights"),
            BottomNavigationBarItem(icon: Icon(Icons.messenger), label: "Chat"),
          ],
        ));
  }
}

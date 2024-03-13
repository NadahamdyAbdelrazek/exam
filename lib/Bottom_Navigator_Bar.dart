import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'News_page.dart';

class BottomNavigatorBar extends StatefulWidget {

  Widget icon;
  Widget icondata;
   BottomNavigatorBar({super.key,required this.icon,required this.icondata});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
      currentIndex: index,
      onTap: (value) {
      index=value;
      setState(() {
      });
      },
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff363F72),
      unselectedItemColor: Color(0xff667085),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "", icon: InkWell(onTap: (){
          Navigator.pushNamed(context, Newspage.routename);
        },
            child: widget.icon)),
        BottomNavigationBarItem(icon: widget.icondata, label: "" ),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),

      ],
    );
  }
}

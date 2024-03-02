import 'package:flutter/material.dart';

class BottomNavigatorBar extends StatefulWidget {

   BottomNavigatorBar({super.key});

  @override
  State<BottomNavigatorBar> createState() => _BottomNavigatorBarState();
}

class _BottomNavigatorBarState extends State<BottomNavigatorBar> {
  int index=0;

  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(onTap: (value) {
      index=value;
      setState(() {
      });

    },currentIndex: index,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff667085),
      unselectedItemColor: Color(0xff667085),
      showUnselectedLabels: false,
      showSelectedLabels: false,
      items: [BottomNavigationBarItem(label: "", icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.grid_view)),
        BottomNavigationBarItem(
            label: "", icon: Icon(Icons.calendar_today_outlined)),
        BottomNavigationBarItem(label: "", icon: Icon(Icons.person)),

      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:project1/calender.dart';
import 'package:project1/profile.dart';
import 'package:project1/requests.dart';
import 'package:project1/signup_page.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _currentIndex = 0;
  // ignore: prefer_final_fields
  List _screens = [
    const calender(),
    // ignore: prefer_const_constructors
    profile(),
    // ignore: prefer_const_constructors
    request(),
    const signup(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: _updateIndex,
          selectedItemColor: Colors.blue[700],
          selectedFontSize: 13,
          unselectedFontSize: 13,
          iconSize: 30,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              label: "Home",
              icon: const Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              label: "Search",
              // ignore: prefer_const_constructors
              icon: Icon(Icons.search),
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              label: "Categories",
              // ignore: prefer_const_constructors
              icon: Icon(Icons.grid_view),
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              label: "My Account",
              // ignore: prefer_const_constructors
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project1/dashboard/DrawerAppbar/appbar.dart';
import 'package:project1/dashboard/DrawerAppbar/drawer.dart';
import 'package:project1/dashboard/dashboard.dart';

//importing file app_drawer.dar and appbar.dart

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[100],
        // appBar: myAppBar(),
        //set app bar from appbar.dart
        // use like this where ever you want
        drawer: myDrawer(),
        // appBar: myAppBar(),
        //set drawer from app_drawer.dart
        //set like this where ever you want
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Reusable Drawer and Appbar",
              style: TextStyle(fontSize: 20),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => dash(),
                  ),
                );
              },
              child: Container(
                height: 25,
                width: 100,
                color: Colors.amber,
              ),
            )
          ],
        ));
  }
}

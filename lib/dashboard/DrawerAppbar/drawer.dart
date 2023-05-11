import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/dashboard/DrawerAppbar/home.dart';
import 'package:project1/dashboard/dashboard.dart';

Widget myDrawer() {
  return Drawer(
    child: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    onTap: () {
                      // Home button action
                    }),

                ListTile(
                    leading: Icon(Icons.person),
                    title: Text("My Profile"),
                    onTap: () {
                      // My Pfofile button action
                    }),

                ListTile(
                    leading: Icon(Icons.search),
                    title: Text("Find Peoples"),
                    onTap: () {
                      // Find peoples button action
                    })

                //add more drawer menu here
              ],
            ))),
  );
}

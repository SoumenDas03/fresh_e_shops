// ignore_for_file: unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:project1/bottomnevigationbar.dart';
import 'package:project1/bottomsheet.dart';
import 'package:project1/calender.dart';
import 'package:project1/calendertwo.dart';
import 'package:project1/color/theme_changes.dart';
import 'package:project1/dashboard.dart';
import 'package:project1/dashboard/DrawerAppbar/home.dart';
import 'package:project1/dashboard/drawer.dart';
import 'package:project1/page.dart';
import 'package:project1/page/alert_dialouge.dart';
import 'package:project1/page/bottomSheet1.dart';
import 'package:project1/page/bottom_sheet.dart';
import 'package:project1/page/chart.dart';
import 'package:project1/page/language.dart';
import 'package:project1/page/menu.dart';
import 'package:project1/provider/dark_theme.dart';
import 'package:project1/page/dialogue_box.dart';
import 'package:project1/page/dropdown.dart';
import 'package:project1/page/googlelocation.dart';
import 'package:project1/page/graph_chart.dart';
import 'package:project1/page/myprofile.dart';
import 'package:project1/page/order.dart';
import 'package:project1/page/resorpay.dart';
import 'package:project1/page1.dart';
import 'package:project1/practic.dart';
import 'package:project1/profile.dart';
import 'package:project1/provider/light_theme.dart';
import 'package:project1/provider/theme_changer.dart';
import 'package:project1/requests.dart';
import 'package:project1/settings_page.dart';
import 'package:project1/signup_page.dart';
import 'package:project1/views_likes.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(Phoenix(child: const MyApp()));

class MyApp extends StatefulWidget {
  const MyApp({key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeChanger(),
      child: Builder(builder: (BuildContext context) {
        final themeChanger = Provider.of<ThemeChanger>(context);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Welcome to Theme',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
            brightness: Brightness.light,
            primarySwatch: Colors.yellow,
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.amber,
                titleTextStyle: TextStyle(color: Colors.black)),
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.purple,
            appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
          ),
          home: Home()
        );
      }),
    );
  }
}

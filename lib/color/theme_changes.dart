// ignore_for_file: camel_case_types, prefer_final_fields, unused_field

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:shared_preferences/shared_preferences.dart';

class theme_changes extends StatefulWidget {
  const theme_changes({super.key});

  @override
  State<theme_changes> createState() => _theme_changesState();
}

class _theme_changesState extends State<theme_changes> {
  TextStyle _style = const TextStyle(fontSize: 20);
  bool _isDark = false;
  ThemeData _light = ThemeData.light().copyWith(
    primaryColor: Colors.green,
  );
  ThemeData _dark = ThemeData.dark().copyWith(
    primaryColor: Colors.blueGrey,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Center(
          child: Text("Theme Color"),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 20),
            child: Text(
              "Positive Always",
              style: _style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 45, top: 20),
            child: Text(
              "Smile Always",
              style: _style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 20),
            child: Text(
              " All is Well",
              style: _style,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 100, top: 20),
            child: Text(
              " 2023-->",
              style: _style.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.deepOrange),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 75, top: 30),
            child: CupertinoSwitch(
              value: _isDark,
              onChanged: ((value) async {
                _isDark = !_isDark;
                if (_isDark == true) {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.setBool('_isDark', _isDark);
                  Phoenix.rebirth(context);
                } else {
                  SharedPreferences sharedPreferences =
                      await SharedPreferences.getInstance();
                  sharedPreferences.clear();
                  Phoenix.rebirth(context);
                }
              }),
            ),
          ),
        ],
      ),
    );
  }
}

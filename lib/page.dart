// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';

class page extends StatelessWidget {
  const page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "assets/aaa.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}


// VerticalDivider(
//                   color: Colors.black, //color of divider
//                   width: 10, //width space of divider
//                   thickness: 3, //thickness of divier line
//                   indent: 10, //Spacing at the top of divider.
//                   endIndent: 10, //Spacing at the bottom of divider.
//                 ),

import 'package:flutter/material.dart';
import 'package:project1/dashboard/DrawerAppbar/drawer.dart';

class dash extends StatefulWidget {
  const dash({super.key});

  @override
  State<dash> createState() => _dashState();
}

class _dashState extends State<dash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: myDrawer(),
    );
  }
}

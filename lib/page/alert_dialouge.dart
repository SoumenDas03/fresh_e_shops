import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:quickalert/quickalert.dart';

// ignore: camel_case_types
class alert_dialouge extends StatefulWidget {
  const alert_dialouge({super.key});

  @override
  State<alert_dialouge> createState() => _alert_dialougeState();
}

// ignore: camel_case_types
class _alert_dialougeState extends State<alert_dialouge> {
  // void show_alert() {
  //   QuickAlert.show(context: context, type: QuickAlertType.success);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text("successfull"),
      //     onPressed: () {
      //       show_alert();
      //     },
      //   ),
      // ),

      body: Center(
        child: ElevatedButton(
          child: const Text("Click me"),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const AlertDialog(
                      title: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage("assets/aaa.jpg"),
                  ));
                });
          },
        ),
      ),
    );
  }
}

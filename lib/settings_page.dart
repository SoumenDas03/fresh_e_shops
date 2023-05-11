// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class settings extends StatefulWidget {
  const settings({key});

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        backgroundColor: const Color.fromARGB(255, 247, 243, 206),
        body: Container(
          margin: const EdgeInsets.only(right: 5, top: 50, left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text('Terms & Condition'),
                  const SizedBox(
                    width: 170,
                  ),
                  Radio(
                      value: 2,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 1;
                        });
                      }),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('Privacy Policy'),
                  const SizedBox(
                    width: 200,
                  ),
                  Radio(
                      value: 1,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value =1 ;
                        });
                      })
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text('Logout'),
                  const SizedBox(
                    width: 242,
                  ),
                  Radio(

                      //fillColor: MaterialStatePropertyAll(Colors.black),
                      value: 3,
                      groupValue: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = 1;
                        });
                      })
                ],
              )
            ],
          ),
        ));
  }
}

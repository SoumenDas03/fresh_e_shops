// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, duplicate_ignore, unused_import, sized_box_for_whitespace

import 'dart:io';

import 'package:flutter/material.dart';

class practics extends StatefulWidget {
  const practics({super.key});

  @override
  State<practics> createState() => _practicsState();
}

class _practicsState extends State<practics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: SingleChildScrollView(
        child: Container(
          alignment: Alignment.topCenter,
          height: 350,
          width: 380,
          color: Colors.amber,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/Logo.png',
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 12),
                child: Text(
                  'Flat 25% Off on Total Bill & getigghkj   dtjkihgygjuoihtf lijigv',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 110,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Gold',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.info_outlined,
                                    size: 13,
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                '8.99',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'All the',
                                style: TextStyle(color: Colors.black26),
                              ),
                              Text(
                                'All the',
                                style: TextStyle(color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 110,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.pink,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Plus',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.info_outlined,
                                    size: 13,
                                    color: Colors.white54,
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                '1.99',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'All ',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                'All ',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 110,
                      width: 100,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 5,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Text(
                                    'Basic',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.info_outline,
                                    size: 13,
                                  )
                                ],
                              ),
                              SizedBox(height: 5),
                              Text(
                                '0.4',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'All the',
                                style: TextStyle(color: Colors.black26),
                              ),
                              Text(
                                'All the',
                                style: TextStyle(color: Colors.black26),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      minimumSize: Size(300, 40),
                      backgroundColor: Color(0xFFdb2c3c)),
                  onPressed: () {},
                  child: Text(
                    'Choose Plan',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
              Text(
                'Buy',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: camel_case_types, prefer_const_constructors, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 50, left: 25, right: 25),
          child: Column(
            children: [
              Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.grid_view,
                      size: 30,
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Text(
                      'Profile',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Icon(Icons.home_outlined)
                  ]),
              Container(
                  margin: EdgeInsets.only(top: 20, left: 5),
                  child: Stack(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/aaa.jpg'),
                        radius: 75,
                      ),
                      Positioned(
                        top: 110,
                        left: 8,
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 65,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/bdg1.png',
                                  height: 45,
                                ),
                              ],
                            )),
                      )
                    ],
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Chaitnaya, 30',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.verified,
                    size: 20,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Complete My Profile',
                    style: TextStyle(
                        fontSize: 12, color: Color.fromARGB(221, 77, 76, 76)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    child: Icon(
                      Icons.circle_notifications,
                      size: 12,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.edit),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Edit Profile',
                          style: TextStyle(
                              color: Color.fromARGB(221, 117, 115, 115),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 0),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/Logo.png',
                          height: 30,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Postbox',
                          style: TextStyle(
                              color: Color.fromARGB(221, 117, 115, 115),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 60),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Settings',
                          style: TextStyle(
                              color: Color.fromARGB(221, 117, 115, 115),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          minimumSize: Size(120, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        'My Plans',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 230, 228, 228),
                          minimumSize: Size(120, 40),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        'Safety',
                        style: TextStyle(
                            color: Color.fromARGB(221, 150, 149, 149),
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Gold',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 15,
                                  )
                                ]),
                            Text(
                              "&6.99",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(children: [
                              Text(
                                'well',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              ),
                              Text(
                                'good',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              )
                            ])
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  SizedBox(
                    width: 100,
                    height: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Plus',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 15,
                                  )
                                ]),
                            Text(
                              "&1.99",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(children: [
                              Text(
                                'well',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              ),
                              Text(
                                'good',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              )
                            ])
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 100,
                    height: 115,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Basic',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.circle,
                                    size: 15,
                                  )
                                ]),
                            Text(
                              "&0.4",
                              style: TextStyle(fontSize: 18),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(children: [
                              Text(
                                'well',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              ),
                              Text(
                                'good',
                                style: TextStyle(
                                    color: Color.fromARGB(221, 156, 154, 154)),
                              )
                            ])
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      minimumSize: Size(350, 40),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  onPressed: () {},
                  child: Text('Continue')),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Limited Variation',
                    style: TextStyle(color: Colors.deepPurple),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

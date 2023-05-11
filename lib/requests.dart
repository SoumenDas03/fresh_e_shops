// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';

class request extends StatelessWidget {
  const request({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50, left: 30, right: 20),
        child: Column(
          children: [
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.home_outlined,
                    size: 30,
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Requests',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Icon(Icons.more_horiz_rounded)
                ]),
            SizedBox(
              height: 10,
            ),
            Card(
              color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: TextFormField(
                decoration: InputDecoration(
                    icon: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide.none)),
              ),
            ),
            SizedBox(
              height: 493,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  physics: ClampingScrollPhysics(),
                  itemCount: 50,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5, left: 10),
                            child: Column(
                              children: [
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assets/aaa.jpg',
                                      ),
                                      radius: 25,
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Text(
                                              'Asrana,23',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Icon(
                                              Icons.verified,
                                              color: Colors.blue,
                                            )
                                          ],
                                        ),
                                        Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(Icons.attach_file),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text('Destination(3Km)'),
                                          ],
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                              bottom: 50, left: 50),
                                          child: Icon(
                                            Icons.visibility,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 210),
                              child: Text('7 days left')),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20)),
                                child: Container(
                                  width: 100,
                                  height: 60,
                                  color: Colors.purple,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Icon(
                                        Icons.link,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Connect',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              Container(
                                width: 100,
                                height: 60,
                                color: Colors.black,
                                child: Column(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Icon(
                                      Icons.toys_sharp,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      'Anonymous',
                                      style: TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 1,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(20)),
                                child: Container(
                                  width: 100,
                                  height: 60,
                                  color: Colors.pink,
                                  child: Column(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: Colors.white,
                                      ),
                                      Text(
                                        'Reject',
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 80,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 10, top: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.black87,
                      size: 25,
                    ),
                    Text(
                      'Filter by Age',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Color.fromARGB(221, 224, 221, 221), //color of divider
                  width: 25, //width space of divider
                  thickness: 1, //thickness of divier line
                  indent: 0, //Spacing at the top of divider.
                  endIndent: 1, //Spacing at the bottom of divider.
                ),
                Column(
                  children: [
                    Icon(
                      Icons.room_outlined,
                      color: Colors.black87,
                      size: 25,
                    ),
                    Text(
                      'Filter by Location',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                VerticalDivider(
                  color: Color.fromARGB(221, 224, 221, 221), //color of divider
                  width: 25, //width space of divider
                  thickness: 1, //thickness of divier line
                  indent: 0, //Spacing at the top of divider.
                  endIndent: 1, //Spacing at the bottom of divider.
                ),
                Column(
                  children: [
                    Icon(
                      Icons.volunteer_activism_outlined,
                      color: Colors.black87,
                      size: 25,
                    ),
                    Text(
                      'Filter by Activity',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

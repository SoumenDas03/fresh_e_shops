// ignore_for_file: camel_case_types, duplicate_ignore, sized_box_for_whitespace, prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

// ignore: camel_case_types
class dialouge_box extends StatefulWidget {
  const dialouge_box({super.key});

  @override
  State<dialouge_box> createState() => _dialouge_boxState();
}

class _dialouge_boxState extends State<dialouge_box> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () => showAlertDialog(context),
            child: Center(
              child: Container(
                height: 25,
                width: 75,
                color: Colors.amber,
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                alignment: Alignment.topRight,
                child: Container(
                  height: 35,
                  width: 115,
                  color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const CircleAvatar(
                        radius: 10,
                        child: Icon(
                          Icons.close,
                          size: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text("CLOSE"),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                        width: 165,
                        child: Center(child: Text("DATE")),
                      ),
                      const SizedBox(
                        height: 2.5,
                      ),
                      Container(
                        height: 100,
                        width: 165,
                        color: Colors.amber,
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // ignore: prefer_const_constructors
                              Container(
                                width: 110,
                                // ignore: prefer_const_constructors
                                child: Text(
                                  '21-02-2023',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Radio(
                                  //fillColor: MaterialStatePropertyAll(Colors.white),
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = 1;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 3.5,
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 50,
                        width: 165,
                        child: Center(
                          child: Text("TIME"),
                        ),
                      ),
                      const SizedBox(
                        height: 2.5,
                      ),
                      Container(
                        height: 100,
                        width: 165,
                        color: Colors.amber,
                        child: Container(
                          alignment: Alignment.topCenter,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              // ignore: prefer_const_constructors
                              SizedBox(
                                width: 110,
                                // ignore: prefer_const_constructors
                                child: Text(
                                  '10:00 AM - 07:00 PM',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Radio(
                                  //fillColor: MaterialStatePropertyAll(Colors.white),
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = 2;
                                    });
                                  }),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 219, 54, 109),
                    minimumSize: const Size(335, 40),
                  ),
                  onPressed: () {},
                  child: Text("SAVE"))
            ],
          ),
        ],
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  int _value = 0;
  int _value2 = 0;

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    alignment: Alignment.topRight,
    content: StatefulBuilder(builder: (context, setState) {
      return SizedBox(
        height: 325,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 219, 54, 109),
                    // minimumSize: const Size(35, 40),
                  ),
                  onPressed: () {},
                  child: Container(
                    height: 35,
                    width: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.brown,
                          radius: 10,
                          child: Icon(
                            Icons.close,
                            size: 13,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text("CLOSE"),
                      ],
                    ),
                  ),
                )),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                      width: 75,
                      child: Center(
                          child: Text(
                        "DATE",
                        style: TextStyle(fontSize: 12),
                      )),
                    ),
                    Container(
                      height: 1,
                      width: 115,
                      color: Colors.black,
                    ),
                    Container(
                      width: 113,
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.topCenter,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '22/Feb/2023',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(

                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 1,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(
                                          () {
                                            _value = 1;
                                          },
                                        );
                                      }),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '23/Feb/2023',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(

                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 2,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = 2;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '24/Feb/2023',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(

                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 3,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = 3;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '25/Feb/2023',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(

                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 4,
                                      groupValue: _value,
                                      onChanged: (value) {
                                        setState(() {
                                          _value = 4;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  color: Colors.black,
                  height: 225,
                  width: 1,
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 25,
                      width: 75,
                      child: Center(
                        child: Text(
                          "TIME",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 115,
                      color: Colors.black,
                    ),
                    Container(
                      width: 113.5,
                      child: Container(
                        margin: const EdgeInsets.only(left: 5),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '10:00 AM - 07:00 PM',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(
                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 1,
                                      groupValue: _value2,
                                      onChanged: (value) {
                                        setState(() {
                                          _value2 = 1;
                                        });
                                      }),
                                ),
                              ],
                            ),
                            Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                // ignore: prefer_const_constructors
                                SizedBox(
                                  width: 60,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    '10:00 AM - 07:00 PM',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                Transform.scale(
                                  scale: 0.8,
                                  child: Radio(
                                      //fillColor: MaterialStatePropertyAll(Colors.white),
                                      value: 2,
                                      groupValue: _value2,
                                      onChanged: (value) {
                                        setState(() {
                                          _value2 = 2;
                                        });
                                      }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 219, 54, 109),
                  minimumSize: const Size(335, 40),
                ),
                onPressed: () {},
                child: const Text("SAVE"))
          ],
        ),
      );
    }),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

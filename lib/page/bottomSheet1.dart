// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottomSheet1 extends StatefulWidget {
  const bottomSheet1({Key? key}) : super(key: key);

  @override
  State<bottomSheet1> createState() => _bottomSheet1State();
}

// ignore: camel_case_types
class _bottomSheet1State extends State<bottomSheet1> {
  int _value = 0;

  bool isVisible = false;
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (BuildContext context) {
          return StatefulBuilder(builder: (context, setState) {
            return SizedBox(
              child: SingleChildScrollView(
                child: Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(left: 25, top: 25),
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(left: 18, top: 15),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Home",
                          // ignore: prefer_const_constructors
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              // splashRadius: 50,
                              //fillColor: MaterialStatePropertyAll(Colors.white),
                              value: 1,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 1;
                                });
                              }),
                          // ignore: prefer_const_constructors
                          Text(
                            'Address 1',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(left: 18),
                        // ignore: prefer_const_constructors
                        child: Text(
                          "Office",
                          style:
                              // ignore: prefer_const_constructors
                              TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                      Row(
                        children: [
                          Radio(
                              //fillColor: MaterialStatePropertyAll(Colors.white),
                              value: 2,
                              groupValue: _value,
                              onChanged: (value) {
                                setState(() {
                                  _value = 2;
                                });
                              }),
                          // ignore: prefer_const_constructors
                          Text(
                            'Address 2',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        // ignore: prefer_const_constructors
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            // ignore: prefer_const_constructors
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isVisible = !isVisible;
                                });
                              },
                              // ignore: prefer_const_constructors
                              child: CircleAvatar(
                                  radius: 10,
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    "+",
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(fontSize: 15),
                                  )),
                            ),
                            // ignore: prefer_const_constructors
                            SizedBox(
                              width: 5,
                            ),
                            // ignore: prefer_const_constructors
                            Text(
                              "Add More",
                              // ignore: prefer_const_constructors
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: isVisible,
                        child: SizedBox(
                          width: 320,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              // ignore: prefer_const_constructors
                              Text(
                                "Contact Person Name *",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "Phone *",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(
                                    cursorColor: Colors.black,
                                    keyboardType: TextInputType.phone,
                                  ),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),

                              // ignore: prefer_const_constructors
                              Text(
                                "Address Type",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(
                                    decoration:
                                        // ignore: prefer_const_constructors
                                        InputDecoration(hintText: 'Home'),
                                  ),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "Country *",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "City",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "Zip Code *",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              // ignore: prefer_const_constructors
                              Text(
                                "Address *",
                                // ignore: prefer_const_constructors
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 50,
                                width: 315,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: TextFormField(),
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 15,
                      )
                    ],
                  ),
                ),
              ),
            );
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Click'),
          onPressed: () => _show(context),
        ),
      ),
    );
  }
}

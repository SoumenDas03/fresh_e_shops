// ignore_for_file: camel_case_types, unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  const bottomsheet({Key? key}) : super(key: key);

  // This function is triggered when the floating buttion is pressed
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
              topStart: Radius.circular(45), topEnd: Radius.circular(45)),
        ),
        elevation: 5,
        context: ctx,
        builder: (BuildContext context) {
          return SizedBox(
            height: 3000,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50, left: 20, right: 20),
                child: Container(
                  margin: EdgeInsets.only(
                    left: 5,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 280, top: 5),
                        child: Icon(
                          Icons.close,
                          color: Color.fromARGB(255, 136, 135, 135),
                          size: 25,
                        ),
                        height: 50,
                      ),
                      Text(
                        'What is badgo? How to achive badgos',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                          'Is simply dummy text at the printing and typesetting industry...Is simply dummy text at the printing and typesetting industry..'),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/bdg2.png',
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('Bold'), Icon(Icons.padding)],
                              )
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                              margin: EdgeInsets.only(bottom: 80),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/bdg1.png',
                                    width: 90,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text('slim'),
                                      Icon(Icons.open_in_new)
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/bdg3.png',
                                width: 90,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [Text('data'), Icon(Icons.calculate)],
                              )
                            ],
                          )
                        ],
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 219, 54, 109),
                              minimumSize: Size(350, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10))),
                          onPressed: () {},
                          child: Text(
                            'Start Using App',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: ElevatedButton(
          child: const Text('Click For bottomsheet '),
          onPressed: () => _show(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Column(
          children: [
            Text('Click'),
            const Icon(
              Icons.ads_click,
              color: Colors.yellow,
            ),
          ],
        ),
        onPressed: () => _show(context),
      ),
    );
  }
}

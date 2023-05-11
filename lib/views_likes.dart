// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, implementation_imports, unnecessary_import, unused_import, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:matcher/matcher.dart';

class vi_li extends StatelessWidget {
  const vi_li({super.key});

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        elevation: 5,
        context: ctx,
        builder: (BuildContext context) {
          return SizedBox(
              child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 35, left: 120),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/OIP.jpg',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Container(
                            margin: EdgeInsets.only(bottom: 220),
                            child: Icon(Icons.close))
                      ],
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.remove_red_eye_rounded,
                          color: Colors.pink,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('23'),
                        SizedBox(
                          width: 30,
                        ),
                        Icon(
                          Icons.favorite_border_rounded,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('3')
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          minimumSize: Size(90, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        'Views',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          minimumSize: Size(90, 30),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      onPressed: () {},
                      child: Text(
                        'Likes',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.only(right: 140, bottom: 15),
                  child: Text(
                    'Connections',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.pinkAccent),
                  )),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: ClampingScrollPhysics(),
                child: SizedBox(
                  height: 290,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                      itemCount: 500,
                      itemBuilder: (BuildContext context, int index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            top: 20,
                          ),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage('assets/me.jpg'),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Text(
                                'Soumen',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              SizedBox(
                                width: 140,
                              ),
                              Icon(Icons.more_horiz)
                            ],
                          ),
                        );
                      }),
                ),
              ),
            ],
          ));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: () => _show(context),
          child: const Text(
            'click',
          )),
    ));
  }
}

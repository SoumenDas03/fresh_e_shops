// ignore_for_file: camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class dash extends StatelessWidget {
  const dash({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 10),
          width: 340,
          height: 40,
          decoration: BoxDecoration(
              color: Color(0xFFFF4D00),
              borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.all(3),
            child: TabBar(
                indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(25)),
                unselectedLabelColor: Colors.white,
                labelColor: Colors.white,
                tabs: [
                  Tab(
                    text: 'Live',
                  ),
                  Tab(
                    text: 'Today',
                  ),
                  Tab(
                    text: 'Upcoming',
                  ),
                  Tab(
                    text: 'Finished',
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
    // ListView.builder(
    //       itemCount: 5,
    //       itemBuilder: (BuildContext context, int index) {
    //         return ListTile(
    //             leading: const Icon(Icons.list),
    //             trailing: const Text(
    //               "GFG",
    //               style: TextStyle(color: Colors.green, fontSize: 15),
    //             ),
    //             title: Text("List item $index"));
    //       }),
    // );



/*
Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 120),
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
                          margin: EdgeInsets.only(bottom: 172),
                          child: Icon(Icons.close))
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.remove_red_eye_rounded),
                      SizedBox(
                        width: 5,
                      ),
                      Text('23'),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.favorite_border_rounded),
                      SizedBox(
                        width: 5,
                      ),
                      Text('23')
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
                        minimumSize: Size(120, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => _show(context),
                    child: const Text(
                      'Views',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                SizedBox(
                  width: 40,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        minimumSize: Size(120, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    onPressed: () => _show(context),
                    child: const Text(
                      'Likes',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(right: 160),
                child: Text('Connections')),
            CircleAvatar()
          ],
        ),
      ),
*/
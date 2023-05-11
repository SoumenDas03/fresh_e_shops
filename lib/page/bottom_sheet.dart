// ignore_for_file: camel_case_types, unused_element, prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class bottom_sheet extends StatelessWidget {
  const bottom_sheet({Key? key}) : super(key: key);

  void _show(BuildContext ctx) {
    showModalBottomSheet(
        isScrollControlled: true,
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadiusDirectional.only(
        //       topStart: Radius.circular(45), topEnd: Radius.circular(45)),
        // ),
        elevation: 5,
        context: ctx,
        builder: (BuildContext context) {
          return SizedBox(
            height: 300,
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: AppBar(
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        icon: Icon(Icons.android),
                        text: "Tab 1",
                      ),
                      Tab(icon: Icon(Icons.phone_iphone), text: "Tab 2"),
                    ],
                  ),
                  title: Text('TutorialKart - TabBar & TabBarView'),
                ),
                body: TabBarView(
                  children: [
                    Center(child: Text("Page 1")),
                    Center(child: Text("Page 2")),
                  ],
                ),
              ),
            ),
          );
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
/*

// This function is triggered when the floating buttion is pressed
void _show(BuildContext ctx) {
  showModalBottomSheet(
      isScrollControlled: true,
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadiusDirectional.only(
      //       topStart: Radius.circular(45), topEnd: Radius.circular(45)),
      // ),
      elevation: 5,
      context: ctx,
      builder: (BuildContext context) {
        return SizedBox(
          height: 150,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Container(
                margin: EdgeInsets.only(
                  left: 5,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 20,
                        ),
                        // height: 50,
                        width: double.infinity,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.black)),
                        child: TextFormField(
                            keyboardType: TextInputType.multiline,
                            cursorHeight: 25,
                            // maxLength: 150,
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            decoration: InputDecoration(
                              hintText: 'Write a comment...',
                            )),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.send,
                            color: Colors.blue,
                          ),
                        ),
                      )
                      // ElevatedButton(onPressed: () {}, child: Text("Done"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      });
}
*/

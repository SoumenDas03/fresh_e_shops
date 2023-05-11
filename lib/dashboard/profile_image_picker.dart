// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_import, non_constant_identifier_names, prefer_typing_uninitialized_variables, use_build_context_synchronously, depend_on_referenced_packages, unused_local_variable

import 'dart:convert';
import 'dart:io';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:image_picker/image_picker.dart';

class profile_image_picker extends StatefulWidget {
  const profile_image_picker({super.key});

  @override
  State<profile_image_picker> createState() => _profile_image_pickerState();
}

class _profile_image_pickerState extends State<profile_image_picker> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int selectedPosition = 3;

  File? _image;
  // Future getImagefromcamera() async {
  //   var image = await ImagePicker.pickImage(source: ImageSource.camera);
  //   setState(() {
  //     _image = image;
  //   });
  // }

  Future getImagefromgallery() async {
    final image = await ImagePicker().pickImage(source: ImageSource.gallery);
    // Future getImagefromGallery() async {
    //   var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image =  _image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      // drawer: Drawer(
      //   width: 380,
      //   child: SingleChildScrollView(
      //     child: Container(
      //       decoration: BoxDecoration(
      //           image: DecorationImage(
      //               image: AssetImage('assets/drawerbackground.png'),
      //               fit: BoxFit.fill)),
      //       child: Column(
      //         children: [
      //           Container(
      //               alignment: Alignment.topRight,
      //               margin: EdgeInsets.only(top: 30, right: 20),
      //               child: InkWell(
      //                   onTap: () {
      //                     Navigator.pop(context);
      //                   },
      //                   child: Icon(Icons.close))),
      //           InkWell(
      //             child: Container(
      //               alignment: Alignment.topRight,
      //               margin: EdgeInsets.only(top: 30, right: 20),
      //               child: Stack(
      //                 // ignore: prefer_const_literals_to_create_immutables
      //                 children: [
      //                   Icon(
      //                     Icons.notifications,
      //                     size: 26,
      //                     color: Color(0xFF166DBE),
      //                   ),
      //                   Positioned(
      //                     left: 13,
      //                     child: CircleAvatar(
      //                       radius: 6,
      //                       backgroundColor: Colors.red,
      //                       child: Text(
      //                         '2',
      //                         style:
      //                             TextStyle(fontSize: 9, color: Colors.white),
      //                       ),
      //                     ),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             onTap: () {},
      //           ),
      //           InkWell(
      //             onTap: () {},
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: Image(image: AssetImage('assets/about.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'ABOUT US',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child:
      //                       Image(image: AssetImage('assets/categories.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'CATEGORIES',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   // child: Image(image: AssetImage('assets/seller.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'BECAME A SELLER',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             onTap: () {},
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: Image(image: AssetImage('assets/premium.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'PREMIUM SERVICE',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             onTap: () {},
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: Image(image: AssetImage('assets/order.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'MY ORDER',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             onTap: () {},
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: Image(image: AssetImage('assets/cart.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'MY CART',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //           InkWell(
      //             child: Row(
      //               children: [
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   height: 45,
      //                   width: 65,
      //                   decoration: BoxDecoration(
      //                       color: Color(0xFF166DBE),
      //                       borderRadius: BorderRadius.circular(10)),
      //                   child: Image(image: AssetImage('assets/wishlist.png')),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(left: 15, top: 20),
      //                   child: Text(
      //                     'MY WISHLIST',
      //                     style: TextStyle(
      //                         color: Color(
      //                           0xFF004886,
      //                         ),
      //                         fontWeight: FontWeight.w600),
      //                   ),
      //                 )
      //               ],
      //             ),
      //             onTap: () {},
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, left: 10),
      //                 height: 45,
      //                 width: 65,
      //                 decoration: BoxDecoration(
      //                     color: Color(0xFF166DBE),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: Image(image: AssetImage('assets/wallet.png')),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(left: 15, top: 20),
      //                 child: Text(
      //                   'MY WALLET',
      //                   style: TextStyle(
      //                       color: Color(
      //                         0xFF004886,
      //                       ),
      //                       fontWeight: FontWeight.w600),
      //                 ),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, left: 10),
      //                 height: 45,
      //                 width: 65,
      //                 decoration: BoxDecoration(
      //                     color: Color(0xFF166DBE),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: Image(image: AssetImage('assets/refer.png')),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(left: 15, top: 20),
      //                 child: Text(
      //                   'REFER & EARN',
      //                   style: TextStyle(
      //                       color: Color(
      //                         0xFF004886,
      //                       ),
      //                       fontWeight: FontWeight.w600),
      //                 ),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, left: 10),
      //                 height: 45,
      //                 width: 65,
      //                 decoration: BoxDecoration(
      //                     color: Color(0xFF166DBE),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: Image(image: AssetImage('assets/review.png')),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(left: 15, top: 20),
      //                 child: Text(
      //                   'RATE US',
      //                   style: TextStyle(
      //                       color: Color(
      //                         0xFF004886,
      //                       ),
      //                       fontWeight: FontWeight.w600),
      //                 ),
      //               )
      //             ],
      //           ),
      //           Row(
      //             children: [
      //               Container(
      //                 margin: EdgeInsets.only(top: 20, left: 10),
      //                 height: 45,
      //                 width: 65,
      //                 decoration: BoxDecoration(
      //                     color: Color(0xFF166DBE),
      //                     borderRadius: BorderRadius.circular(10)),
      //                 child: Image(image: AssetImage('assets/signout.png')),
      //               ),
      //               Container(
      //                 margin: EdgeInsets.only(left: 15, top: 20),
      //                 child: Text(
      //                   'SIGN OUT',
      //                   style: TextStyle(
      //                       color: Color(
      //                         0xFF004886,
      //                       ),
      //                       fontWeight: FontWeight.w600),
      //                 ),
      //               )
      //             ],
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        // ignore: prefer_const_literals_to_create_immutables
                        stops: [0.05, 0.5, 0.7],
                        // ignore: prefer_const_literals_to_create_immutables
                        colors: [
                          Color(0xFF164574),
                          Color.fromARGB(255, 7, 105, 203),
                          Color(0xFF217CD1),
                        ],
                      ),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: 30, bottom: 50),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              // child: Image.asset('assets/humBurger.png'),
                              child: CircleAvatar(),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          // Image.asset('assets/logo1.png'),
                          CircleAvatar(),
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(top: 5, right: 15),
                            child: Icon(
                              Icons.notifications,
                              size: 18,
                              color: Colors.white,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.person),
                            radius: 16,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 15,
                    top: 80,
                    child: Card(
                      child: Container(
                        color: Color(0xFFF3FAFF),
                        height: 60,
                        width: 320,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Text(
                                'My Account',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 11, 99, 171),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17),
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 100),
                                child: CircleAvatar()),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                'Sign Out',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  InkWell(
                    child: Card(
                      child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'My Orders',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Card(
                      child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'My Wishlist',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Card(
                      child: Container(
                        height: 25,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Text(
                            'My Cart',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  Card(
                    child: Container(
                      height: 25,
                      width: 80,
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: Text(
                          'My Wallet',
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 20),
                          child: _image == null
                              ? CircleAvatar(
                                  radius: 60,
                                  child: Icon(
                                    Icons.person,
                                    size: 80,
                                    color: Color.fromARGB(255, 150, 141, 141),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 60,
                                  backgroundImage: FileImage(_image!),
                                )),
                      Positioned(
                        top: 90,
                        left: 105,
                        child: InkWell(
                            onTap: () => getImagefromgallery(),
                            child: Icon(Icons.camera_alt)),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        width: 200,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                // icon: Icon(Icons.person),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                  size: 16,
                                ),
                                hintText: ' Name',
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: 200,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                // icon: Icon(Icons.person),
                                prefixIcon: Icon(
                                  Icons.calendar_month,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                hintText: ' Date Of Birth:',
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: 200,
                        child: Container(
                          margin: EdgeInsets.only(left: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                // icon: Icon(Icons.person),
                                prefixIcon: Icon(
                                  Icons.mail,
                                  size: 16,
                                  color: Colors.black,
                                ),
                                hintText: ' Email',
                                hintStyle: TextStyle(fontSize: 12)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'Address :',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 340,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        // icon: Icon(Icons.person),

                        hintText: ' Address',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                width: 340,
                child: Container(
                  margin: EdgeInsets.only(left: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        // icon: Icon(Icons.person),

                        hintText: ' Address',
                        hintStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 20, top: 30),
                child: Text(
                  'Change Password :',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 350,
                child: Row(
                  children: [
                    Text(
                      'Old Password ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      width: 200,
                      height: 35,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(6),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            filled: true,
                            hintText: "Old Password",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(139, 0, 0, 0),
                                fontSize: 12),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 350,
                child: Row(
                  children: [
                    Text(
                      'New Password ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      width: 200,
                      height: 35,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(6),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            filled: true,
                            hintText: "New Password",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(139, 0, 0, 0),
                                fontSize: 12),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                width: 350,
                child: Row(
                  children: [
                    Text(
                      'Confirm Password ',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 12),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      width: 200,
                      height: 35,
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(6),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 20),
                            filled: true,
                            hintText: "Confirm Password",
                            hintStyle: const TextStyle(
                                color: Color.fromARGB(139, 0, 0, 0),
                                fontSize: 12),
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                ),
                child: SizedBox(
                  width: 260,
                  height: 45,
                  child: ElevatedButton(
                    //style:
                    onPressed: () {},
                    // ignore: sort_child_properties_last
                    child: const Text(
                      'Save',
                      style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 15,
                      backgroundColor: Color.fromARGB(255, 41, 169, 46),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

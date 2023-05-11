import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget myAppBar(Widget te){
   return AppBar(
      backgroundColor: Color.fromRGBO(156,204,101, 1),
      //background color of Appbar to green
      title: Text(""),
      actions: <Widget>[
          IconButton( 
             icon: Icon(Icons.search),
             onPressed: (){
                 //action for search icon button
             },
          ),

          IconButton( 
             icon: Icon(Icons.person),
             onPressed: (){
                 //action for user icon button
             },
          )
      ],
   );

}
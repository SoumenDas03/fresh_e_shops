import 'package:flutter/material.dart';

// ignore: camel_case_types
class dropdown extends StatefulWidget {
  const dropdown({super.key});

  @override
  State<dropdown> createState() => _dropdownState();
}

class ListItem {
  int value;
  String name;
  ListItem(this.value, this.name);
}

// ignore: camel_case_types
class _dropdownState extends State<dropdown> {
  int _value = 1;
  // ignore: prefer_final_fields
  List<ListItem> _dropdownItems = [
    ListItem(1, "Eng"),
    ListItem(2, "Ben"),
    ListItem(3, "Hind"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DropdownButton(
        value: _value,
        items: _dropdownItems.map((ListItem item) {
          return DropdownMenuItem<int>(
            // ignore: sort_child_properties_last
            child: Text(item.name),
            value: item.value,
          );
        }).toList(),
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        },
      ),
    );
  }
}

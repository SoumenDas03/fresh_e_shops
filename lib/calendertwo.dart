import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

// ignore: camel_case_types
class calender_ extends StatefulWidget {
  const calender_({super.key});

  @override
  State<calender_> createState() => _calender_State();
}

// ignore: camel_case_types
class _calender_State extends State<calender_> {
  // ignore: prefer_final_fields, unused_field
  CalendarFormat _calendarFormat = CalendarFormat.month;
  // ignore: prefer_final_fields
  DateTime _focusedDay = DateTime.now();
  // ignore: unused_field
  DateTime? _selectedDate;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _selectedDate = _focusedDay;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(child: Text("Calender")),
      ),
      body: Column(
        children: [
          TableCalendar(
              focusedDay: _focusedDay,
              firstDay: DateTime(2000),
              lastDay: DateTime(2100))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

// ignore: camel_case_types
class calender extends StatefulWidget {
  const calender({super.key});

  @override
  State<calender> createState() => _calenderState();
}

// ignore: camel_case_types
class _calenderState extends State<calender> {
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    dateController.text = "";
    timeController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(child: Text("Date Picker")),
      ),
      body: Container(
        // ignore: prefer_const_constructors
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: dateController,

                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                    // ignore: prefer_const_constructors
                    icon: Icon(Icons.today),
                    labelText: "Enter Date"),
                readOnly: true,
                onTap: () async {
                  // ignore: use_build_context_synchronously
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );

                  if (pickedDate != null) {
                    setState(() {
                      dateController.text = pickedDate.toString();
                    });

                    // String formattedDate = DateFormat.("yyyy-mm-dd").format(pickedDate);
                  } else {
                    // ignore: avoid_print
                    print("Not Selected");
                  }
                },
              ),
              TextField(
                controller: timeController,
                decoration: const InputDecoration(
                    // ignore: prefer_const_constructors
                    icon: Icon(Icons.time_to_leave),
                    labelText: "Enter Time"),
                // +
                onTap: () async {
                  // ignore: use_build_context_synchronously
                  TimeOfDay? pickedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  if (pickedTime != null) {
                    setState(() {
                      timeController.text = pickedTime.toString();
                    });

                    // String formattedDate = DateFormat.("yyyy-mm-dd").format(pickedDate);
                  } else {
                    // ignore: avoid_print
                    print("Not Selected");
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

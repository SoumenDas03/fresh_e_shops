import 'package:flutter/material.dart';

// ignore: camel_case_types
class order extends StatefulWidget {
  const order({super.key});

  @override
  State<order> createState() => _orderState();
}

// ignore: camel_case_types
class _orderState extends State<order> {
  // ignore: non_constant_identifier_names
  int current_step = 0;
  List<Step> steps = [
    const Step(
      title: Text('Step 1'),
      content: Text('Hello!'),
      isActive: true,
    ),
    const Step(
      title: Text('Step 2'),
      content: Text('World!'),
      isActive: true,
    ),

    // ignore: prefer_const_constructors
    Step(
      // ignore: prefer_const_constructors
      title: Text('Step 3'),
      content: const Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stepper(
        // ignore: unnecessary_this
        currentStep: this.current_step,
        steps: steps,
        type: StepperType.vertical,
        onStepTapped: (step) {
          setState(() {
            current_step = step;
          });
        },
        onStepContinue: () {
          setState(
            () {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            },
          );
        },

        onStepCancel: () {
          setState(
            () {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            },
          );
        },
      ),
    );
  }
}

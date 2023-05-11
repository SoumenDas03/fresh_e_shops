// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';
// // ignore: import_of_legacy_library_into_null_safe
// import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';

// // ignore: camel_case_types
// class spinning_wheel extends StatefulWidget {
//   const spinning_wheel({super.key});

//   @override
//   State<spinning_wheel> createState() => _spinning_wheelState();
// }

// // ignore: camel_case_types
// class _spinning_wheelState extends State<spinning_wheel> {
//   final StreamController _dividerController = StreamController<int>();

//   final _wheelNotifier = StreamController<double>();

//   @override
//   dispose() {
//     super.dispose();
//     _dividerController.close();
//     _wheelNotifier.close();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             SpinningWheel(
//               Image.asset('assets/wheel.png'),
//               width: 310,
//               height: 310,
//               initialSpinAngle: _generateRandomAngle(),
//               spinResistance: 0.6,
//               canInteractWhileSpinning: false,
//               dividers: 8,
//               onUpdate: _dividerController.add,
//               onEnd: _dividerController.add,
//               secondaryImage: Image.asset('assets/spin_indicator.png'),
//               secondaryImageHeight: 110,
//               secondaryImageWidth: 110,
//               shouldStartOrStop: _wheelNotifier.stream,
//             ),
//             const SizedBox(height: 30),
//             StreamBuilder(
//               stream: _dividerController.stream,
//               builder: (context, snapshot) =>
//                   snapshot.hasData ? RouletteScore(snapshot.data) : Container(),
//             ),
//             const SizedBox(height: 30),
//             // ignore: unnecessary_new
//             new ElevatedButton(
//               child: const Text("Start"),
//               onPressed: () => _wheelNotifier.sink.add(
//                 _generateRandomVelocity(),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   double _generateRandomVelocity() => (Random().nextDouble() * 6000) + 2000;

//   double _generateRandomAngle() => Random().nextDouble() * pi * 2;
// }

// class RouletteScore extends StatelessWidget {
//   final int selected;
//   final Map<int, String> labels = {
//     1: '1000\$',
//     2: '400\$',
//     3: '800\$',
//     4: '7000\$',
//     5: '5000\$',
//     6: '300\$',
//     7: '2000\$',
//     8: '100\$',
//   };
//   RouletteScore(this.selected, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Text('${labels[selected]}',
//         style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0));
//   }
// }

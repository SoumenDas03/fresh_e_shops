// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';

// // ignore: camel_case_types
// class resorpay extends StatefulWidget {
//   const resorpay({super.key});

//   @override
//   State<resorpay> createState() => _resorpayState();
// }

// // ignore: camel_case_types
// class _resorpayState extends State<resorpay> {
//   final _razorpay = Razorpay();

//   var amounutController = TextEditingController();

//   @override
//   void initState() {
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//     super.initState();
//   }

//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     // ignore: avoid_print
//     print("Payment Done");
//     // Do something when payment succeeds
//   }

//   void _handlePaymentError(PaymentFailureResponse response) {
//     // ignore: avoid_print
//     print("Payment fail");
//     // Do something when payment fails
//   }

//   void _handleExternalWallet(ExternalWalletResponse response) {
//     // Do something when an external wallet was selected
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 25),
//             child: SizedBox(
//                 height: 50,
//                 width: 300,
//                 child: TextField(
//                   controller: amounutController,
//                   decoration:
//                       const InputDecoration(hintText: "Enter Your Amount"),
//                 )),
//           ),
//           const SizedBox(
//             height: 25,
//           ),
//           CupertinoButton(
//               color: Colors.amber,
//               child: const Text("Pay Amount"),
//               onPressed: () {
//                 var options = {
//                   'key': "rzp_test_xvllZZBGCoOSzLO",
//                   'amount': int.parse(amounutController.text.toString()),
//                   'name': 'RPay',
//                   'description': 'Demo',
//                   'timeout':300,
//                   'prefill': {
//                     'contact': '0123456789',
//                     'email': 'test@razorpay.com'
//                   }
//                 };
//                 _razorpay.open(options);
//               })
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _razorpay.clear();
//     super.dispose();
//   }
// }

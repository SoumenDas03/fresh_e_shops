import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class chart extends StatefulWidget {
  const chart({super.key});

  @override
  State<chart> createState() => _chartState();
}

// ignore: camel_case_types
class _chartState extends State<chart> {
  final List<Color> gredientColors = [
    const Color(0xFFFF4D00),
    // ignore: prefer_const_constructors
    Color.fromARGB(255, 134, 62, 182),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Chart")),
      ),
      body: LineChart(
          LineChartData(minX: 0, maxX: 11, minY: 0, maxY: 11, lineBarsData: [
        LineChartBarData(
            // ignore: prefer_const_constructors
            spots: [FlSpot(5, 3), FlSpot(0, 3), FlSpot(0, 5), FlSpot(4, 5)])
      ])),
    );
  }
}




















// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<SalesData> chartData = [
//       // SalesData(2010, 35),
//       // SalesData(2011, 28),
//       // SalesData(2012, 34),
//       // SalesData(2013, 32),
//       // SalesData(2014, 40)
//     ];

//     return Scaffold(
//         body: Center(
//             child: Container(
//                 height: 250,
//                 width: 200,
//                 child: SfCartesianChart(
//                     primaryXAxis: DateTimeAxis(),
//                     series: <ChartSeries>[
//                       // Renders line chart
//                       LineSeries<SalesData, DateTime>(
//                           dataSource: chartData,
//                           xValueMapper: (SalesData sales, _) => sales.year,
//                           yValueMapper: (SalesData sales, _) => sales.sales)
//                     ]))));
//   }
// }

// class SalesData {
//   SalesData(this.year, this.sales);
//   final DateTime year;
//   final double sales;
// }

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

// ignore: camel_case_types
class graphchart extends StatefulWidget {
  const graphchart({super.key});

  @override
  State<graphchart> createState() => _graphchartState();
}

// ignore: camel_case_types
class _graphchartState extends State<graphchart> {
  // ignore: non_constant_identifier_names
  final List<chartdata> Chartdata = [
    chartdata("India", 5),
    chartdata("UK", 2),
    chartdata("china", 1),
    chartdata("USA", 5),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(child: Text("Chart")),
      ),
      body: SizedBox(
        height: 250,
        width: 200,
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          series: [
            StackedColumnSeries(
              dataSource: Chartdata,
              xValueMapper: (chartdata ch, _) => ch.x,
              yValueMapper: (chartdata ch, _) => ch.y1,
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class chartdata {
  final String x;
  final int y1;
  // final int y2;
  // final int y3;
  // final int y4;

  chartdata(
    this.x,
    this.y1,
    //  this.y2, this.y3, this.y4
  );
}

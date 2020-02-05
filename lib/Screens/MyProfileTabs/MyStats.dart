import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:fcharts/fcharts.dart';

class MyStats extends StatefulWidget {
  @override
  _MyStatsState createState() => _MyStatsState();
}

class _MyStatsState extends State<MyStats> {

  static const byTimeChartData = [
    ["Jan 2019", "10"],
    ["Feb 2019", "15"],
    ["Mar 2019", "20"],
    ["Apr 2019", "10"],
  ];

  static const byRoundsChartData = [
    ["60", "8"],
    ["55", "22"],
    ["50", "15"],
    ["45", "8"],
    ["40", "15"],
    ["35", "22"],
    ["30", "8"],
    ["25", "22"],
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top:10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('11.04 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: Colors.green),),
                  Text('Current handicap', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.black),),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('-1.61 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('since signing up', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                child: Text('Handicap evolution',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                )
            ),

            // line chart goes here
            Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                child: Text('By time',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),
                )
            ),

            Container(
              child: SingleChildScrollView(
                  child: new AspectRatio(
                    aspectRatio: 8 / 3,
                    child: new LineChart(
                      lines: [

                        new Line<List<String>, String, String>(
                          data: byTimeChartData,



                          xFn: (datum) => datum[0],
                          yFn: (datum) => datum[1],

                          stroke: new PaintOptions.stroke(color:Colors.greenAccent,strokeWidth: 2.0)
                        ),
                      ],

                      chartPadding: new EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 30.0),

                    ),
                  )
              ),
            ),

            Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                child: Text('By rounds',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),
                )
            ),

            Container(
                child: new AspectRatio(
                  aspectRatio: 7 / 3,
                  child: new LineChart(
                    lines: [
                      new Line<List<String>, String, String>(
                        data: byRoundsChartData,
                        xFn: (datum) => datum[0],
                        yFn: (datum) => datum[1],

                          stroke: new PaintOptions.stroke(color:Colors.greenAccent,strokeWidth: 2.0)
                      ),
                    ],
                    chartPadding: new EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 30.0),
                  ),
                )
            ),

            Container(
                margin: EdgeInsets.only(top:10,bottom: 10),
                child: Text('Par average',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),
                )
            ),
            Container(
              child: Row(
                children: <Widget>[
                  SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                        customColors: CustomSliderColors(trackColor: Colors.black,progressBarColors: [Colors.green,Colors.yellow,Colors.red]),
                        customWidths: CustomSliderWidths(progressBarWidth: 10),
                        size: 100

                    ),
                    min: 0,
                    max: 100,
                    initialValue: 39,



                  ),
                  SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                        customColors: CustomSliderColors(trackColor: Colors.black,progressBarColors: [Colors.green,Colors.yellow,Colors.red]),
                        customWidths: CustomSliderWidths(progressBarWidth: 10),
                        size: 100
                    ),
                    min: 0,
                    max: 100,
                    initialValue: 48,
                  ),
                  SleekCircularSlider(
                    appearance: CircularSliderAppearance(
                        customColors: CustomSliderColors(trackColor: Colors.black,progressBarColors: [Colors.green,Colors.yellow,Colors.red]),
                        customWidths: CustomSliderWidths(progressBarWidth: 10),
                        size: 100
                    ),
                    min: 0,
                    max: 100,
                    initialValue: 68.5,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('42 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('games played total', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('24 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('games played with drone footage', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('18 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('games played in scorecard mode only', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('94 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('minutes game average', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
            Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('18 ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.green),),
                  Text('months on Birdiescope', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14,color: Colors.black),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}


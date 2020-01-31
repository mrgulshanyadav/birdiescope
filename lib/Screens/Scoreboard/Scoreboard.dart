import 'package:birdiescope/Screens/MyProfile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';

class Scoreboard extends StatefulWidget {
  @override
  _ScoreboardState createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery. of(context). size. width;
    double screenHeight = MediaQuery. of(context). size. height;

    int selected_number_of_holes = 18;
    int selected_starting_hole = 1;


    return Scaffold(
        appBar: null,
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Scorecard",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Keep track of your handicap by using the app as a simple scorecard",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(left: 20,right: 10,top: 10,bottom: 10),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/images/bg.jpg'),
                                  radius: 30,
                                ),
                                Expanded(
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Chris Arock",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              "Handicap ",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                            Text(
                                              "11",
                                              style: TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                CircleAvatar(
                                  child: Icon(Icons.edit,color: Colors.white,),
                                  backgroundColor: Colors.grey,
                                  radius: 20,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: 3,
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: DottedBorder(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.add_circle_outline),
                                FlatButton(
                                  child: Text(
                                    "ADD A PLAYER",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top:10 , bottom: 10),
                  child: Text(
                    "Number of holes",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: screenWidth,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: NumberPicker.integer(
                        scrollDirection: Axis.horizontal,
                        initialValue: selected_number_of_holes,
                        highlightSelectedValue: true,
                        minValue: 1,
                        maxValue: 18,
                        onChanged: (input){
                          setState(() {
                            selected_number_of_holes = input;
                          });
                        }
                    )
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 20, top:10 , bottom: 20),
                  child: Text(
                    "Starting hole",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    width: screenWidth,
                    height: 50,
                    padding: EdgeInsets.all(10),
                    child: NumberPicker.integer(
                        scrollDirection: Axis.horizontal,
                        initialValue: selected_starting_hole,
                        highlightSelectedValue: true,
                        minValue: 1,
                        maxValue: 18,
                        onChanged: (input){
                          setState(() {
                            selected_starting_hole = input;
                          });
                        },

                    )
                ),
                Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.green),
                      alignment: Alignment.bottomCenter,
                    )
                )
              ],
            )));
  }
}

import 'package:birdiescope/Screens/PlayerComponents/NewPlayer.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddAPlayer extends StatefulWidget {
  @override
  _AddAPlayerState createState() => _AddAPlayerState();
}

class _AddAPlayerState extends State<AddAPlayer> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
                child: Text(
                  "Add a player",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
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
                            Stack(
                              alignment: Alignment.topRight,
                              children: <Widget>[
                                Container(
                                  height: 80,
                                  width: 80,
                                  padding: EdgeInsets.only(right: 20),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.red,
                                    radius: 30,
                                    child: Text('CA',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                  ),
                                ),
                                Container(
                                  child: CircleAvatar(
                                    child: Icon(Icons.edit,color: Colors.white,),
                                    radius: 20,
                                    backgroundColor: Colors.grey,
                                  ),
                                ),
                              ],
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
                                          "10",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        Text(
                                          "Played ",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal),
                                        ),
                                        Text(
                                          "11",
                                          style: TextStyle(
                                              color: Colors.green,
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " games",
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            CircleAvatar(
                              child: Icon(Icons.add,color: Colors.white,),
                              backgroundColor: Colors.green,
                              radius: 30,
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
                itemCount: 2,
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                child: DottedBorder(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.add_circle_outline),
                      FlatButton(
                        child: Text(
                          "ADD A NEW PLAYER",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              fontWeight: FontWeight.normal),
                        ),
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled:true,
                              context: context,
                              builder: (context){
                                return FractionallySizedBox(
                                  heightFactor: 0.65,
                                  child: NewPlayer(),
                                );
                              }
                          );
                        },
                      ),
                    ],
                  ),
                )),
          ],
        )
    );
  }
}

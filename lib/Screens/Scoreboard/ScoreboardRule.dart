import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class ScoreboardRule extends StatefulWidget {
  @override
  _ScoreboardRuleState createState() => _ScoreboardRuleState();
}

class _ScoreboardRuleState extends State<ScoreboardRule> {

  List<String> usersList;
  List<dynamic> counter;


  @override
  void initState() {
    counter = [5,5,5,5];
    usersList = ["Chris A.","Hanna M.","John D."];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  Container(
                    padding:EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(

                          child: Text(
                              "Scorecard", style: TextStyle(
                              color: Colors.black,
                              fontSize: 36,
                              fontWeight: FontWeight.bold)
                          ),
                        ),
                        Container(
                          child: CircleAvatar(
                            radius: 20,
                            child: Icon(Icons.edit,color: Colors.white,),
                            backgroundColor: Colors.grey,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 60,
                              padding: EdgeInsets.all(3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  RotatedBox(
                                    child: Text('Hole', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                    quarterTurns: 3,
                                  ),

                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder: (context,index){
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                            borderRadius: new BorderRadius.circular(25.0),
                                            border: new Border.all(
                                              width: 2.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                          child: Center(
                                              child: Text((index+1).toString(), style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
                                          ),
                                        );
                                      },
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              padding: EdgeInsets.all(3),
                              child: Column(
                                children: <Widget>[
                                  RotatedBox(
                                    child: Text('Par', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
                                    quarterTurns: 3,
                                  ),

                                  Container(
                                    padding: EdgeInsets.only(top:10),
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder: (context,index){
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(25.0),
                                              color: Colors.black87
                                          ),
                                          child: Center(
                                              child: Text((index+1).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                          ),
                                        );
                                      },
                                    ),
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 60,
                              padding: EdgeInsets.all(3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.circular(25.0),
                                        color: Colors.black87
                                    ),
                                    child: Center(
                                        child: Text("CA", style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                    ),
                                  ),

                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder: (context,index){
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(25.0),
                                              color: Colors.orangeAccent
                                          ),
                                          child: Center(
                                              child: Text((index+1).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                          ),
                                        );
                                      },
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              padding: EdgeInsets.all(3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.circular(25.0),
                                        color: Colors.red
                                    ),
                                    child: Center(
                                        child: Text("HM", style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                    ),
                                  ),

                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder: (context,index){
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(25.0),
                                              color: Colors.green
                                          ),
                                          child: Center(
                                              child: Text((index+1).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                          ),
                                        );
                                      },
                                    ),
                                  )

                                ],
                              ),
                            ),
                            Container(
                              width: 60,
                              padding: EdgeInsets.all(3),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 50,
                                    height: 50,
                                    margin: EdgeInsets.all(2),
                                    decoration: new BoxDecoration(
                                        borderRadius: new BorderRadius.circular(25.0),
                                        color: Colors.blue
                                    ),
                                    child: Center(
                                        child: Text("JD", style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                    ),
                                  ),

                                  Container(
                                    child: ListView.builder(
                                      shrinkWrap: true,
                                      scrollDirection: Axis.vertical,
                                      itemCount: 4,
                                      itemBuilder: (context,index){
                                        return Container(
                                          width: 50,
                                          height: 50,
                                          margin: EdgeInsets.all(2),
                                          decoration: new BoxDecoration(
                                              borderRadius: new BorderRadius.circular(25.0),
                                              color: Colors.black87
                                          ),
                                          child: Center(
                                              child: Text((index+1).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
                                          ),
                                        );
                                      },
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              alignment: FractionalOffset.topCenter,
              children: <Widget>[
                Card(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.all(2),
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  border: new Border.all(
                                    width: 2.0,
                                    color: Colors.black,
                                  ),
                                ),
                                child: Center(
                                    child: Text("5", style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Hole 5", style: TextStyle(fontWeight: FontWeight.bold),),
                                    Text("Enter par",style: TextStyle(color: Colors.grey),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Stack(
                            alignment: FractionalOffset.center,
                            children: <Widget>[
                              Container(
                                width: 55,
                                height: 55,
                                margin: EdgeInsets.only(left:40, right: 40, top: 5, bottom: 5),
                                decoration: new BoxDecoration(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  color: Colors.black87,
                                ),
                                child: Center(
                                    child: Text("3", style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),)
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(left: 75),
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    color: Colors.grey,
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                                child: Center(
                                    child: Text("+", style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),)
                                ),
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                margin: EdgeInsets.only(right: 75),
                                decoration: new BoxDecoration(
                                    borderRadius: new BorderRadius.circular(25.0),
                                    color: Colors.grey,
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.white
                                    )
                                ),
                                child: Center(
                                    child: Text("-", style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),)
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: GestureDetector(
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      child: Icon(Icons.arrow_upward, color: Colors.black,),
                    ),
                    onTap: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (context){
                            return StatefulBuilder(
                              builder: (BuildContext context, StateSetter setState){
                                return FractionallySizedBox(
                                    heightFactor: 1.05,
                                    child: Stack(
                                      alignment: FractionalOffset.topCenter,
                                      children: <Widget>[
                                        Column(
                                          children: <Widget>[
                                            Expanded(
                                              child: Container(
                                                padding: EdgeInsets.only(top: 15),
                                                child: ListView.builder(
                                                    itemCount: 4,
                                                    itemBuilder: (context,index){
                                                      String shortUserName;
                                                      if(index!=0) {
                                                        shortUserName = usersList[index-1].split(" ")[0].substring(0,1) + // first word of first name
                                                            usersList[index-1].split(" ")[1].substring(0,1); // first word of last name
                                                      }
                                                      return Container(
                                                        padding: EdgeInsets.all(10),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                          children: <Widget>[
                                                            Container(
                                                              child: Row(
                                                                children: <Widget>[
                                                                  Container(
                                                                    width: 50,
                                                                    height: 50,
                                                                    margin: EdgeInsets.all(2),
                                                                    decoration: new BoxDecoration(
                                                                      borderRadius: new BorderRadius.circular(25.0),
                                                                      border: new Border.all(
                                                                        width: 2.0,
                                                                        color: Colors.black,
                                                                      ),
                                                                    ),
                                                                    child: Center(
                                                                        child: Text(index == 0 ? "5": shortUserName, style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets.all(5),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        Text(index == 0 ? "Hole 5": usersList[index-1], style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        Text(index ==0 ? "Enter par" : "Currently ",style: TextStyle(color: Colors.grey),),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              child: Stack(
                                                                alignment: FractionalOffset.center,
                                                                children: <Widget>[
                                                                  Container(
                                                                    width: 55,
                                                                    height: 55,
                                                                    margin: EdgeInsets.only(left:40, right: 40, top: 5, bottom: 5),
                                                                    decoration: new BoxDecoration(
                                                                      borderRadius: new BorderRadius.circular(25.0),
                                                                      color: Colors.black87,
                                                                    ),
                                                                    child: Center(
                                                                        child: Text(counter[index].toString(), style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),)
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 50,
                                                                    height: 50,
                                                                    margin: EdgeInsets.only(left: 75),
                                                                    decoration: new BoxDecoration(
                                                                        borderRadius: new BorderRadius.circular(25.0),
                                                                        color: index==0? Colors.grey : Colors.red,
                                                                        border: Border.all(
                                                                            width: 2,
                                                                            color: Colors.white
                                                                        )
                                                                    ),
                                                                    child: Center(
                                                                        child: GestureDetector(
                                                                          child: Text("+", style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),),
                                                                          onTap: (){
                                                                            setState(() {
                                                                              counter[index] = counter[index]+1;
                                                                            });
                                                                          },
                                                                        )
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: 50,
                                                                    height: 50,
                                                                    margin: EdgeInsets.only(right: 75),
                                                                    decoration: new BoxDecoration(
                                                                        borderRadius: new BorderRadius.circular(25.0),
                                                                        color: index ==0 ? Colors.grey : Colors.green,
                                                                        border: Border.all(
                                                                            width: 2,
                                                                            color: Colors.white
                                                                        )
                                                                    ),
                                                                    child: Center(
                                                                        child: GestureDetector(
                                                                          child: Text("-", style: TextStyle(color: Colors.white,fontSize: 36, fontWeight: FontWeight.bold),),
                                                                          onTap: (){
                                                                            setState(() {
                                                                              counter[index] = counter[index]-1;
                                                                            });
                                                                          },
                                                                        )
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 5),
                                              decoration: BoxDecoration(color: Colors.green,
                                                gradient: LinearGradient(colors: [Color(0xff05c39b),Colors.green]),
                                              ),
                                              padding: EdgeInsets.all(16),
                                              alignment: Alignment.bottomCenter,
                                              child: SliderButton(
                                                action: () {
                                                  ///Do something here after slide
                                                },
                                                width: MediaQuery.of(context).size.width,
                                                label: Text(
                                                  "Slide to finish game ->",
                                                  style: TextStyle(
                                                      color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
                                                ),
                                                icon: Center(child: Icon(Icons.transfer_within_a_station,color: Colors.white)),
                                                backgroundColor: Color(0xff05c39b),
                                                buttonColor: Color(0xff05c39b),
                                                baseColor: Colors.white,
                                              ),
                                            )
                                          ],
                                        ),
                                        Container(
                                          child: GestureDetector(
                                            child: CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 15,
                                              child: Icon(Icons.arrow_downward, color: Colors.black,),
                                            ),
                                            onTap: (){
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ),
                                      ],
                                    )
                                );
                              },
                            );
                          }
                      );
                    },
                  ),
                ),
              ],
            )
          ],

        ),
      ),
    );
  }
}
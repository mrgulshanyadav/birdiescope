import 'package:birdiescope/Screens/Scoreboard/ScoreboardRule.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class ScoreboardEdit extends StatefulWidget {
  @override
  _ScoreboardEditState createState() => _ScoreboardEditState();
}

class _ScoreboardEditState extends State<ScoreboardEdit> {

  List<String> usersList;
  List<dynamic> counter;
  List<dynamic> usersScoresList;
  List<dynamic> parList;

  String selected_hole;


  @override
  void initState() {
    counter = [5,5,5,5];
    usersList = ["Chris A.","Hanna M.","John D."];
    usersScoresList = [[5,3,1,5],[4,2,2,3],[1,5,4,2]];
    parList = [2,4,3,4];
    selected_hole = "0";
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
                            child: GestureDetector(
                              child: CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.close,color: Colors.white,),
                                backgroundColor: Colors.red,
                              ),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                  return ScoreboardRule();
                                }));
                              },
                            )
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
                                              child: GestureDetector(
                                                child: Text((index+1).toString(), style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),),
                                                onTap: (){
                                                  setState(() {
                                                    selected_hole = (index+1).toString();
                                                  });
                                                },
                                              )
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
                                              child: Text((parList[index]).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
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
                                              child: Text((usersScoresList[0][index]).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
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
                                              child: Text(((usersScoresList[1][index])).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
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
                                              child: Text(((usersScoresList[2][index])).toString(), style: TextStyle(color: Colors.white,fontSize: 18, fontWeight: FontWeight.bold),)
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
                                    child: Text(selected_hole, style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Hole "+selected_hole, style: TextStyle(fontWeight: FontWeight.bold),),
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
                                                      List<dynamic> userScoresSum = [0,0,0];
                                                      int par_total_sum = 0;
                                                      int par_score_difference = 0;

                                                      for(int i=0;i<parList.length;i++){
                                                        par_total_sum = par_total_sum + parList[i];
                                                      }

                                                      for(int i=0;i<usersScoresList.length;i++){
                                                        for(int j=0;j<usersScoresList[0].length;j++){
                                                          userScoresSum[i] = userScoresSum[i] + usersScoresList[i][j];
                                                        }
                                                      }

                                                      String shortUserName;
                                                      if(index!=0) {
                                                        shortUserName = usersList[index-1].split(" ")[0].substring(0,1) + // first word of first name
                                                            usersList[index-1].split(" ")[1].substring(0,1); // first word of last name
                                                        par_score_difference = userScoresSum[index-1]-par_total_sum;
                                                      }

                                                      print("par_total_sum: "+par_total_sum.toString());
                                                      print("userScoresSum: "+userScoresSum.toString());
                                                      print("par_score_difference: "+par_score_difference.toString());

                                                      return Container(
                                                        padding: EdgeInsets.all(10),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                        child: Text(index == 0 ? selected_hole: shortUserName, style: TextStyle(color: Colors.black,fontSize: 18, fontWeight: FontWeight.bold),)
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    margin: EdgeInsets.all(5),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: <Widget>[
                                                                        Text(index == 0 ? "Hole "+selected_hole: usersList[index-1], style: TextStyle(fontWeight: FontWeight.bold),),
                                                                        Row(
                                                                          children: <Widget>[
                                                                            Text(index == 0 ? "Enter par" : "Currently ",style: TextStyle(color: Colors.grey),),
                                                                            Text(index == 0 ? " " : par_score_difference.toString() ,style: TextStyle(color: par_score_difference < 1 ? Colors.green : Colors.red, fontSize: 22, fontWeight: FontWeight.bold  ),),
                                                                          ],
                                                                        ),
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

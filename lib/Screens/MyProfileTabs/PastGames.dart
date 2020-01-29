import 'package:flutter/material.dart';

class PastGames extends StatefulWidget {
  @override
  _PastGamesState createState() => _PastGamesState();
}

class _PastGamesState extends State<PastGames> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 3,
                  child: Text("12 days ago", style: TextStyle(color: Colors.grey),),
                ),
                Expanded(
                  child: Card(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/bg.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                            child: Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                                          ),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Pebble Beach', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                                            Text('Santa Cruz, CA - 07/24/2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white70),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Text("+1")
                                          ),
                                          backgroundColor: Colors.yellow,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5,top: 20,bottom: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Par ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('72', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Played with ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('3 teammates', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.green),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Icon(Icons.add,color: Colors.white,)
                                          ),
                                          backgroundColor: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 3,
                  child: Text("22 days ago", style: TextStyle(color: Colors.grey),),
                ),
                Expanded(
                  child: Card(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/bg.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                            child: Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                                          ),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Silvarado Golf Club', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                                            Text('Zephyrhills, FL - 07/14/2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white70),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Text("-2")
                                          ),
                                          backgroundColor: Colors.green,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5,top: 20,bottom: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Par ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('70', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Played with ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('2 teammates', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.green),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Icon(Icons.add,color: Colors.white,)
                                          ),
                                          backgroundColor: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              children: <Widget>[
                RotatedBox(
                  quarterTurns: 3,
                  child: Text("1 month ago", style: TextStyle(color: Colors.grey),),
                ),
                Expanded(
                  child: Card(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/images/bg.jpg"),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 10),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                            child: Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                                          ),
                                          backgroundColor: Colors.transparent,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.all(15),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Text('Silvarado Golf Club', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                                            Text('Zephyrhills, FL - 07/14/2019', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white70),),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Text("=", style: TextStyle(color: Colors.white,fontSize: 26),)
                                          ),
                                          backgroundColor: Colors.grey,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5,top: 20,bottom: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Par ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('72', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.black),),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: <Widget>[
                                                Text('Played with ', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.grey),),
                                                Text('3 teammates', style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16,color: Colors.green),),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 5),
                                        child: CircleAvatar(
                                          child: ClipOval(
                                              child: Icon(Icons.add,color: Colors.white,)
                                          ),
                                          backgroundColor: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

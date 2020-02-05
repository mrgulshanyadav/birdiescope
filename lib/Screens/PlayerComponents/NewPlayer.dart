import 'package:flutter/material.dart';

class NewPlayer extends StatefulWidget {
  @override
  _NewPlayerState createState() => _NewPlayerState();
}

class _NewPlayerState extends State<NewPlayer> {
  @override
  Widget build(BuildContext context) {

    List<String> colorsList = ["0xFF7C4DFF","0xFF64B5F6","0xFFFF1952","0xFFFF9100","0xFFFFC602"];

    String selectedColor = "";


    return Container(
        child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                padding:EdgeInsets.only(top:20,left:20, right:20, bottom:10),
                child: Text(
                  "New player",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 36,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding:EdgeInsets.only(top:20,left:20, right:20, bottom:0),
                child: Text(

                  " select a color for this player",
                  style: TextStyle(
                      color:Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),

              Expanded(
                child: Center(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      if(index==2){
                        return Container(
                            margin: EdgeInsets.only(top: 10,right: 10),
                            height: 60,
                            width: 70,
                            child: GestureDetector(
                              child: CircleAvatar(
                                  backgroundColor: Color(int.parse(colorsList[index]))
                              ),
                              onTap: (){
                                setState(() {
                                  selectedColor = colorsList[index];
                                });
                              },
                            )
                        );
                      }
                      else {
                        return Container(
                            margin: EdgeInsets.only(top: 10,right: 10),
                            height: 60,
                            width: 50,
                            child: GestureDetector(
                              child: CircleAvatar(
                                  backgroundColor: Color(int.parse(colorsList[index]))
                              ),
                              onTap: (){
                                setState(() {
                                  selectedColor = colorsList[index];
                                });
                              },
                            )
                        );
                      }
                    },
                    itemCount: colorsList.length,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(bottom: 10, top: 20,left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Color(0xFFF3F7F6),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    hintText: 'First Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (input){
                    setState((){

                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 20,right: 20),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),
                    filled: true,
                    fillColor: Color(0xFFF3F7F6),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      borderSide: BorderSide(color: Colors.black12),
                    ),
                    hintText: 'Last Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (input){
                    setState((){

                    });
                  },
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10,left: 20,right: 5),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(15),
                          filled: true,
                          fillColor: Color(0xFFF3F7F6),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          hintText: 'Handicap',
                          prefixIcon: Icon(Icons.location_on),
                        ),
                        onChanged: (input){
                          setState((){

                          });
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(bottom: 10, left: 5,right: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(15),
                          filled: true,
                          fillColor: Color(0xFFF3F7F6),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0)),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          hintText: 'Plays from',
                          prefixIcon: Icon(Icons.location_searching),
                        ),
                        onChanged: (input){
                          setState((){

                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 0,bottom: 20,right: 20,left: 20),
                decoration: BoxDecoration(
                    borderRadius: new BorderRadius.circular(10.0),
                    gradient: LinearGradient(
                        colors: [Color(0xFF1EE07C),Color(0xFF21C4A7),],
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter
                    )
                ),
                child: FlatButton(
                  child: Center(
                      child: Text("ADD THIS PLAYER",style: TextStyle(color: Colors.white,fontSize: 16))
                  ),
                  onPressed: (){},
                  padding: EdgeInsets.all(20),
                  color: Colors.transparent,
                ),
              )


            ])
    );

  }
}

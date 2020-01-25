import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  TextEditingController emailEditingContrller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true, // set it to false
        appBar: AppBar(title: Text("Register")),
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                  child: Image.asset('assets/images/birdbg.png',fit: BoxFit.cover,height: 300,)
              ),
              SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Column(
                      textDirection: TextDirection.ltr,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            child: Text("Create a new Account", style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),textAlign: TextAlign.start),
                            padding: EdgeInsets.only(top: 10, bottom: 10),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              filled: true,
                              fillColor: Colors.white30,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              hintText: 'Email (used for login)',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              filled: true,
                              fillColor: Colors.white30,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              hintText: 'Name',
                              prefixIcon: Icon(Icons.person_pin),
                            ),
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.all(10),
                                    child: Image.asset('assets/images/profile_photo.png',width:100,height:100),
                                  )
                                ],
                              ),
                              Expanded(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(15),
                                            filled: true,
                                            fillColor: Colors.white30,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              borderSide: BorderSide(color: Colors.black12),
                                            ),
                                            hintText: 'Handicap',
                                            prefixIcon: Icon(Icons.flag),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(bottom: 10),
                                        child: TextField(
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            contentPadding: EdgeInsets.all(15),
                                            filled: true,
                                            fillColor: Colors.white30,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              borderSide: BorderSide(color: Colors.black),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                              borderSide: BorderSide(color: Colors.black12),
                                            ),
                                            hintText: 'Starting position',
                                            prefixIcon: Icon(Icons.adjust),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              filled: true,
                              fillColor: Colors.white30,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.lock_outline),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.all(15),
                              filled: true,
                              fillColor: Colors.white30,
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                borderSide: BorderSide(color: Colors.black12),
                              ),
                              hintText: 'Repeat Password',
                              prefixIcon: Icon(Icons.lock),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
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
                                child: Text("CREATE ACCOUNT",style: TextStyle(color: Colors.white,fontSize: 16))
                            ),
                            onPressed: (){},
                            padding: EdgeInsets.all(20),
                            color: Colors.transparent,
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
        )
    );
  }
}


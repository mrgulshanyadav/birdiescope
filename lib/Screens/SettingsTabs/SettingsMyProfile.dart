import 'package:flutter/material.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
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
                hintText: 'Chris Arock',
                prefixIcon: Icon(Icons.person),
              ),
              onChanged: (input){
                setState((){
                  // password = input;
                });
              },
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10,right: 10),
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
                        prefixIcon: Icon(Icons.flag),
                      ),
                      onChanged: (input){
                        setState((){
                          // password = input;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
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
                        hintText: 'Whites',
                        prefixIcon: Icon(Icons.remove_circle_outline),
                      ),
                      onChanged: (input){
                        setState((){
                          // password = input;
                        });
                      },
                    ),
                  ),
                ),
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
                  fillColor: Color(0xFFF3F7F6),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  hintText: 'West Palm Beach, FL',
                  prefixIcon: Icon(Icons.location_on),
                  suffixIcon: Icon(Icons.my_location)
              ),
              onChanged: (input){
                setState((){
                  // password = input;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
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
                hintText: 'hello@gcarock.com',
                prefixIcon: Icon(Icons.person),
                enabled: false,
              ),
              onChanged: (input){
                setState((){
                  // password = input;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Color(0xFF21C4A7),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                hintText: 'Subscribed to Newsletter',
                prefixIcon: Icon(Icons.mail),
                suffixIcon: Icon(Icons.autorenew),
              ),
              onChanged: (input){
                setState((){
                  // password = input;
                });
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                filled: true,
                fillColor: Colors.grey,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  borderSide: BorderSide(color: Colors.black12),
                ),
                hintText: 'Change password',
                prefixIcon: Icon(Icons.lock),
              ),
              onChanged: (input){
                setState((){
                  // password = input;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

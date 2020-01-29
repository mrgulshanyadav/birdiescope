import 'package:flutter/material.dart';

class Unlocked extends StatefulWidget {
  @override
  _UnlockedState createState() => _UnlockedState();
}

class _UnlockedState extends State<Unlocked> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
          children: <Widget>[
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(bottom: 20, top: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 25, bottom: 24, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Oakmont C.C.', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                          Text('akmond, PA - 102 miles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),),
                          Text('Active - 8 hours left', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 25, bottom: 24, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Pebble Beach', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                          Text('Santa Cruz, FL - 102 miles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),),
                          Text('Unlocked - 3 days ago', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
              ),
              margin: EdgeInsets.only(bottom: 20),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 25, top: 25, bottom: 24, right: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                          Image.asset('assets/images/profile_photo.png',width: 40,height: 40,),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Augusta National', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,color: Colors.white),),
                          Text('akmond, PA - 102 miles', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.grey),),
                          Text('Active - 8 hours left', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16,color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
    );
  }
}

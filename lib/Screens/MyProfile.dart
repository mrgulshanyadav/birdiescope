import 'package:flutter/material.dart';
import '../Screens/MyProfileTabs//Unlocked.dart';
import '../Screens/MyProfileTabs/PastGames.dart';
import '../Screens/MyProfileTabs/MyStats.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfileState createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  var _currentTabPage;

  @override
  void initState() {
    setState(() {
      _currentTabPage = Unlocked();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 0, top: 50),
                      child: CircleButton(iconData: Icons.arrow_back, onTap: () {}),
                      decoration: new BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(50),
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile_photo.png'),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 50, right: 0),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Row(
                                children: <Widget>[
                                  Image.asset('assets/images/profile_photo.png',width: 20,height: 20,),
                                  Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text("Temp", style: TextStyle(color: Colors.grey)),
                                        Text("75'", style: TextStyle(color: Colors.grey)),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ),
                            Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: <Widget>[
                                    Image.asset('assets/images/profile_photo.png',width: 20,height: 20,),
                                    Container(
                                      child: Column(
                                        children: <Widget>[
                                          Text("Wind", style: TextStyle(color: Colors.grey)),
                                          Text("24mph", style: TextStyle(color: Colors.grey)),
                                        ],
                                      ),
                                    )
                                  ],
                                )
                            ),
                          ],
                        ))
                  ],
                ),
              ),
              Container(
                alignment: FractionalOffset(0.0, 0.0),
                child: Text(
                  "My Profile",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start,
                ),
              ),
              Container(
                child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: TabBar(
                      tabs: [
                        Tab(text: "Unlocked"),
                        Tab(text: "Past games"),
                        Tab(text: "My stats")
                      ],
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.green,
                      indicatorColor: Colors.green,
                      isScrollable: true,
                      onTap: (pos) {
                        setState(() {
                          if (pos == 0) {
                            _currentTabPage = Unlocked();
                          } else if (pos == 1) {
                            _currentTabPage = PastGames();
                          } else if (pos == 2) {
                            _currentTabPage = MyStats();
                          }
                        });
                      },
                    )),
              ),
              Expanded(
                child: _currentTabPage,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;

  const CircleButton({Key key, this.onTap, this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double size = 50.0;

    return new InkResponse(
      onTap: onTap,
      child: new Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: new Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }
}

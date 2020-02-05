import 'package:flutter/material.dart';
import 'package:birdies_scop/Screens/SettingsTabs/SettingsMyProfile.dart';
import 'package:birdies_scop/Screens/SettingsTabs/SettingsMyTeam.dart';
import 'package:birdies_scop/Screens/SettingsTabs/SettingsPaymentInfo.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  var _currentTabPage;


  @override
  void initState() {
    setState((){
      _currentTabPage = SettingsMyProfile();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: null,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        margin: EdgeInsets.only(left: 0, top: 20),
                        child: CircleButton(
                            iconData: Icons.arrow_back, onTap: () {}),
                        decoration: new BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 2,
                        child: Center(
                          child: Container(
                            margin: EdgeInsets.only(top: 20, right: 0),
                            height: 100,
                            width: 100,
                            child: CircleAvatar(
                              backgroundImage:
                              AssetImage('assets/images/profile_photo.png'),
                            ),
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                alignment: FractionalOffset(0.0, 0.0),
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  "Settings",
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
                        Tab(text: "My profile"),
                        Tab(text: "My team"),
                        Tab(text: "Payment info")
                      ],
                      unselectedLabelColor: Colors.grey,
                      labelColor: Colors.green,
                      indicatorColor: Colors.green,
                      isScrollable: true,
                      onTap: (pos){
                        setState((){
                          if(pos==0){
                            _currentTabPage = SettingsMyProfile();
                          }
                          else if(pos==1){
                            _currentTabPage = SettingsMyTeam();
                          }
                          else if(pos==2){
                            _currentTabPage = SettingsPaymentInfo();
                          }

                        });
                      },
                    )
                ),
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
import 'package:birdiescope/Screens/Settings.dart';
import 'package:birdiescope/Screens/SettingsTabs/SettingsMyProfile.dart';
import 'package:flutter/material.dart';
import 'Screens/Scoreboard/ScoreboardEdit.dart';
import 'Screens/Scoreboard/ScoreboardRule.dart';
import 'Screens/UserProfile.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> _children = [UserProfile(),ScoreboardRule(),Settings()];
  int _currentIndex;


  @override
  void initState() {
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          resizeToAvoidBottomPadding: false,
          body :_children[_currentIndex],
          bottomNavigationBar: SizedBox(
            height: 55,
            child: BottomNavigationBar(
            currentIndex: 0,
            backgroundColor: Colors.white,
            elevation: 10,
            onTap: (index){
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home, color: _currentIndex == 0 ? Colors.green : Colors.grey,),
                title: new Text('Home', style: TextStyle(color: _currentIndex == 0 ? Colors.green : Colors.grey,),),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.score, color: _currentIndex == 1 ? Colors.green : Colors.grey,),
                title: new Text('Scoreboard', style: TextStyle(color: _currentIndex == 1 ? Colors.green : Colors.grey,),),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.settings, color: _currentIndex == 2 ? Colors.green : Colors.grey,),
                title: new Text('Settings', style: TextStyle(color: _currentIndex == 2 ? Colors.green : Colors.grey,),),
              ),
            ],
              fixedColor: Colors.grey,
              type: BottomNavigationBarType.fixed,
            ),
          ),
        )
    );
  }
}

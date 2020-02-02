import 'package:birdiescope/Screens/BeginGame/BeginGame.dart';
import 'package:birdiescope/Screens/Scoreboard/ScoreboardRule.dart';
import 'package:flutter/material.dart';
import './Screens/Registration.dart';
import './Screens/Settings.dart';
import './Screens/MyProfile.dart';
import 'Screens/Scoreboard/Scoreboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: ScoreboardRule(),
    );
  }
}
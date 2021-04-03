import 'dart:io';
import 'info.dart';
import 'home.dart';
import 'package:flutter/material.dart';

class Unit extends StatefulWidget{
  @override
  UnitState createState() => UnitState();
}
class UnitState extends State<Unit>{
  int widgetIndex;
  List<Widget> screenList;

  @override
  void initState(){
    widgetIndex = 0;
    screenList = [
      Home(),
      Info(),
    ];
  }

  @override
  void changeScreen(int index) {
    setState((){
      widgetIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        title: new Padding(
          padding: EdgeInsets.all(25),
          child: new Text(
          'HOME',
          style: new TextStyle(
            color: Color(0xFF000000),
            fontSize: 30
          )
        )
      )),
      backgroundColor: Color(0xFFFFFFFF),
      body: screenList.elementAt(widgetIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xFF000000),
              size: 24.0,
            ),
            label: 'Home',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.architecture,
              color: Color(0xFF000000),
              size: 24.0,
            ),
            label: 'Info',
            backgroundColor: Color(0xFF000000),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: Color(0xFF000000),
              size: 24.0,
            ),
            label: 'Exit',
            backgroundColor: Color(0xFF000000),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Color(0xFF000000),
        onTap: (int index) {
          if (index == 2){
            exit(0);
          } else{
            changeScreen(index);
          }
        }
      ),
    );
  }
}

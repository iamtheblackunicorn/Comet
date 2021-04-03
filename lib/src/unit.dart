// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'dart:io';
import 'info.dart';
import 'home.dart';
import 'constants.dart';
import 'dataHandler.dart';
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
    widgetIndex = startingIndex;
    screenList = [
      Home(dataClass: DataHandler()),
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
        backgroundColor: mainColor,
        elevation: elevationParameter,
        title: new Padding(
          padding: EdgeInsets.all(basicRounding),
          child: new Text(
            'HOME',
            style: new TextStyle(
              color: accentColor,
              fontSize: titleFontSize
            )
          )
        ),
      ),
      backgroundColor: mainColor,
      body: screenList.elementAt(widgetIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: accentColor,
              size: stdIconSize,
            ),
            label: 'Home',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.architecture,
              color: accentColor,
              size: stdIconSize,
            ),
            label: 'Info',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: accentColor,
              size: stdIconSize,
            ),
            label: 'Exit',
            backgroundColor: accentColor,
          ),
        ],
        currentIndex: startingIndex,
        selectedItemColor: accentColor,
        onTap: (int index) {
          if (index == specialIndex){
            exit(startingIndex);
          } else{
            changeScreen(index);
          }
        }
      ),
    );
  }
}

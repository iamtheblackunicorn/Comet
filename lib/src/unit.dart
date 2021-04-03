// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'dart:io';
import 'info.dart';
import 'home.dart';
import 'constants.dart';
import 'dataHandler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

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
    String homeMessage = AppLocalizations.of(context).homeLabel;
    String infoMessage = AppLocalizations.of(context).infoLabel;
    String exitMessage = AppLocalizations.of(context).exitLabel;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: mainColor,
        elevation: elevationParameter,
        centerTitle: titleCenter,
        title: new Padding(
          padding: EdgeInsets.all(basicRounding),
          child: new Text(
            appTitle,
            style: new TextStyle(
              color: accentColor,
              fontSize: titleFontSize,
              fontFamily: defaultFont
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
            label: '$homeMessage',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.architecture,
              color: accentColor,
              size: stdIconSize,
            ),
            label: '$infoMessage',
            backgroundColor: accentColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: accentColor,
              size: stdIconSize,
            ),
            label: '$exitMessage',
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

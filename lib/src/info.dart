// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: newsCardWidth,
      height: newsCardHeight,
      child: Padding(
        padding: EdgeInsets.all(basicRounding),
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(basicRounding)
          ),
          color: accentColor,
          child: new Column(
            children: <Widget> [
              new SizedBox(height: specialPushDown),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:new Text(
                  'App info',
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    color: mainColor,
                    fontSize: basicRounding
                  )
                )
              ),
              new Padding(
                padding: EdgeInsets.all(stdPadding),
                child: new Text(
                  '$infoString',
                  textAlign: TextAlign.left,
                  style: new TextStyle(
                    color: mainColor,
                    fontSize: stdPadding,
                    fontFamily: defaultFont
                  )
                )
              )
            ]
          )
        )
      )
    );
  }
}

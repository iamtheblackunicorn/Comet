import 'package:flutter/material.dart';
import 'package:termstyle/termstyle.dart';
String unicorn = getEmoji('unicornHead');
String infoString = 'Comet v.1.0.0\nby The Black Unicorn $unicorn';
class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return SizedBox(
      width: 400,
      height: 500,
      child: Padding(
      padding: EdgeInsets.all(25),
      child: new Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25)
        ),
        color: Color(0xFF000000),
        child: new Column(
          children: <Widget> [
            new SizedBox(height: 100),
            new Padding(
              padding: EdgeInsets.all(20),
              child:new Text(
                'App info',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 25
                )
              )
            ),
            new Padding(
              padding: EdgeInsets.all(20),
              child: new Text(
                '$infoString',
                textAlign: TextAlign.left,
                style: new TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 20
                )
              )
            )
          ]
        )
      )
    ));
  }
}

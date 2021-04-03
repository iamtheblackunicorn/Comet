import 'package:flutter/material.dart';

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
            new Padding(
              padding: EdgeInsets.all(20),
              child:new Text(
                'Lorem ipsum',
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
                'Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet.',
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

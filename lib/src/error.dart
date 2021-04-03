import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget> [
          new SizedBox(
            height: 250
          ),
          new Icon(
            Icons.warning,
            color: Color(0xFF000000),
            size: 150,
          ),
          new Text(
            'Error!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          )
        ]
      )
    );
  }
}

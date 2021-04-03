// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget> [
          new SizedBox(
            height: symbolPushDown
          ),
          new Icon(
            Icons.warning,
            color: accentColor,
            size: symbolSize,
          ),
          new Text(
            'Error!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: basicRounding,
            ),
          )
        ]
      )
    );
  }
}

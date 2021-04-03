// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget> [
          new SizedBox(
            height: symbolPushDown
          ),
          new LoadingBouncingGrid.square(
            size: symbolSize,
            backgroundColor: accentColor,
          )
        ]
      )
    );
  }
}

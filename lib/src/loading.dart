import 'package:flutter/material.dart';
import 'package:termstyle/termstyle.dart';
import 'package:loading_animations/loading_animations.dart';

class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        children: <Widget> [
          new SizedBox(
            height: 250
          ),
          new LoadingBouncingGrid.square(
            size: 150,
            backgroundColor: Color(0xFF000000),
          )
        ]
      )
    );
  }
}

// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';

class Pill extends StatefulWidget{
  final String categoryName;
  Pill({
    Key key,
    @required this.categoryName,
  }) : super(key: key);
  @override
  PillState createState() => PillState();
}
class PillState extends State<Pill>{
  String category;
  @override
  void initState(){
    category = widget.categoryName;
  }
  @override
  Widget build(BuildContext context){
    return Padding(
      child:new ElevatedButton(
        child: Text(
          '',
          style: new TextStyle(
            fontSize: specialButtonFontSize,
            color: mainColor,
            fontFamily: defaultFont
          )
        ),
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(basicRounding)
          ),
          primary: accentColor,
          padding: EdgeInsets.all(stdPadding)
        ),
      ),
    );
  }
}

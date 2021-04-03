// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BasicUnit extends StatefulWidget{
  final String heading;
  final String time;
  final String link;
  BasicUnit({
    Key key,
    @required this.heading,
    @required this.time,
    @required this.link
  }) : super(key: key);
  @override
  BasicUnitState createState() => BasicUnitState();
}
class BasicUnitState extends State<BasicUnit>{
  String postHeading;
  String postTime;
  String articleLink;
  void initState(){
    postHeading = widget.heading;
    postTime = widget.time;
    articleLink = widget.link;
  }
  @override
  Widget build(BuildContext context){
    String readMessage = AppLocalizations.of(context).readLabel;
    String postedOnMessage = AppLocalizations.of(context).postedOnLabel;
    return new Column(
      children:<Widget> [
        SizedBox(height: pushDown),
        new Padding(
          padding: EdgeInsets.all(extraPadding),
          child: new SizedBox(
            width: newsCardWidth,
            height: newsCardHeight,
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(basicRounding)
              ),
              color: accentColor,
              child: new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:
                  new Column(
                    children: <Widget> [
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child:new Text(
                        '$postHeading',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          color: mainColor,
                          fontSize: basicRounding,
                          fontFamily: defaultFont
                        )
                      )
                    ),
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child: new Text(
                        '$postedOnMessage: $postTime',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          color: mainColor,
                          fontSize: stdPadding,
                          fontFamily: defaultFont
                        )
                      )
                    ),
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child:new ElevatedButton(
                        child: Text(
                          '$readMessage',
                          style: new TextStyle(
                            fontSize: buttonFontSize,
                            color: accentColor,
                            fontFamily: defaultFont
                          )
                        ),
                        onPressed: () async {
                          try {
                            await launch(articleLink);
                          } catch(e) {}
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(basicRounding)
                          ),
                          primary: mainColor,
                          padding: EdgeInsets.all(specialPadding)
                        ),
                      ),
                    )
                  ]
                )
              )
            )
          )
        )
      ]
    );
  }
}

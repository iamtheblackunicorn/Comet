// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    String appInfoMessage = AppLocalizations.of(context).appInfoLabel;
    String byMessage = AppLocalizations.of(context).byLabel;
    String infoString = '$appTitle v.$appVersion\n$byMessage The Black Unicorn $unicorn';
    return new Column(
      children: <Widget> [
        new SizedBox(height: pushDown),
        new SizedBox(
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
                      '$appInfoMessage',
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
        )
      ]
    );
  }
}

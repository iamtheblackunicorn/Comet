// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Error extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    String errorMessage = AppLocalizations.of(context).errorLabel;
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
            '$errorMessage!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: basicRounding,
              fontFamily: defaultFont
            ),
          )
        ]
      )
    );
  }
}

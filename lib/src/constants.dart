// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:termstyle/termstyle.dart';

// ./everywhere
Color mainColor = Color(0xFFFFFFFF);
Color accentColor = Color(0xFF000000);
String defaultFont = 'Orbi';
String appTitle = 'Comet';
String appVersion = '1.1.0';

// ./dataHandler.dart
Dio dio = Dio();
String apiKey = '6619159b-07e4-4d0c-9a0f-988e194aa2be';
String apiUrl = 'https://content.guardianapis.com/search?q=finance&api-key=$apiKey';

// ./basicHome.dart
double pushDown = 70;
double basicRounding = 25;
double stdPadding = 15;
double specialPadding = 10;
double extraPadding = 30;
double newsCardWidth = 400;
double newsCardHeight = 500;
double imageWidth = 200;
double buttonFontSize = 18;

// ./error.dart & loading.dart
double symbolPushDown = 250;
double symbolSize = 150;

// ./info.dart
double specialPushDown = 100;
String unicorn = getEmoji('unicornHead');

// ./unit.dart
double stdIconSize = 24;
double titleFontSize = 30;
int startingIndex = 0;
double elevationParameter = 0;
int specialIndex = 2;
bool titleCenter = true;

// ./pill.dart
double specialButtonFontSize = 15;

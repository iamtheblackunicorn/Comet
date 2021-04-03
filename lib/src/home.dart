// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'aux.dart';
import 'error.dart';
import 'loading.dart';
import 'basicHome.dart';
import 'constants.dart';
import 'dataHandler.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  final DataHandler dataClass;
  Home({Key key, @required this.dataClass}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}
class HomeState extends State<Home>{
  Future<Map<String, dynamic>> newsApi;
  @override
  void initState(){
    newsApi = widget.dataClass.getData();
  }
  @override
  Widget build(BuildContext context){
    PageController pageController = PageController(initialPage:startingIndex);
    return FutureBuilder<Map<String,dynamic>>(
      future: newsApi,
      builder: (BuildContext context, AsyncSnapshot<Map<String,dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            return Error();
          }
          else {
            List<dynamic> results = snapshot.data['results'];
            List<Widget> screens = [];
            for (int i = 0; i < results.length; i++){
              Map<String, dynamic> article = results[i];
              String articleTitle = article['webTitle'];
              String articleUrl = article['webUrl'];
              String articleDate = article['webPublicationDate'];
              screens.add(
                BasicUnit(
                  heading: articleTitle,
                  time: articleDate,
                  link: articleUrl
                )
              );
            }
            return PageView(
              controller: pageController,
              children: screens
            );
          }
        }
      }
    );
  }
}

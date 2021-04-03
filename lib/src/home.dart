import 'basicHome.dart';
import 'package:flutter/material.dart';

Future<Map<String, dynamic>> posts = {
  'Post One': [
    'Lorem ipsum sit dolor amet.',
    'Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet.',
  ],
  'Post Two': [
    'Lorem ipsum sit dolor amet.',
    'Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet.',
  ],
  'Post Three': [
    'Lorem ipsum sit dolor amet.',
    'Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet.',
  ]
}

class Home extends StatelessWidget{
  void initState(){
    items = posts
  }
  @override
  Widget build(BuildContext context){
    PageController pageController = PageController(initialPage:0);
    return FutureBuilder<Map<String,dynamic>>(
      future: items,
      builder: (BuildContext context, AsyncSnapshot<Map<String,dynamic>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            print(snapshot.error);
            return Error();
          }
          else {
            Map<String, dynamic> data = snapshot.data;
            List<Widget> screens = [];
            for (int i = 0; i < data.length; i++){
              String key = data.keys.elementAt(i);
              List<dynamic> dataValue = data[key];
              String postBody = dataValue[1];
              BasicUnit unit = BasicUnit(heading: key, content: postBody)
              screens.add(unit);
            }
            return PageView(
              controller: pageController,
              children: screens
            );
          }
        }
      }
    )
  }
}

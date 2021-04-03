import 'error.dart';
import 'loading.dart';
import 'basicHome.dart';
import 'package:flutter/material.dart';

Future<Map<String, List<String>>> myPosts() async {
  return {
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
  };
}



class Home extends StatelessWidget{
  Future<Map<String, List<String>>> items;
  void initState(){
    items = myPosts();
  }
  @override
  Widget build(BuildContext context){
    PageController pageController = PageController(initialPage:0);
    return FutureBuilder<Map<String,List<String>>>(
      future: items,
      builder: (BuildContext context, AsyncSnapshot<Map<String,List<String>>> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting){
          return Loading();
        }
        else {
          if (snapshot.hasError) {
            print(snapshot.error);
            return Error();
          }
          else {
            print(snapshot.data.length);
            Map<String, List<String>> data = snapshot.data;
            List<Widget> screens = [];
            for (int i = 0; i < data.length; i++){
              String key = data.keys.elementAt(i);
              List<String> dataValue = data[key];
              String postBody = dataValue[1];
              BasicUnit unit = BasicUnit(heading: key, content: postBody);
              screens.add(unit);
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

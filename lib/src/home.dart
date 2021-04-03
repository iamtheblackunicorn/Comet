import 'aux.dart';
import 'error.dart';
import 'loading.dart';
import 'basicHome.dart';
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
            List<dynamic> articles = snapshot.data['articles'];
            int descriptionRange = 40;
            int titleRange = 20;
            List<Widget> screens = [];
            for (int i = 0; i < articles.length; i++) {
              Map<String, dynamic> article = articles[i];
              String articleUrl = article['url'];
              String articleImage = article['urlToImage'];
              String articleTitle = shortenString(titleRange, article['title']);
              String articleDescription = article['description'];
              if (articleImage == null ){
                articleImage = defaultImage;
              }
              if (articleDescription == null) {
                articleDescription = defaultDescription;
              } else {
                articleDescription = shortenString(descriptionRange, article['description']);
              }
              screens.add(
                BasicUnit(
                  heading:articleTitle,
                  content:articleDescription,
                  image: articleImage,
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

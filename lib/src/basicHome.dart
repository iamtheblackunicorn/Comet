import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicUnit extends StatefulWidget{
  final String heading;
  final String content;
  final String image;
  final String link;
  BasicUnit({Key key, @required this.heading, @required this.content, @required this.image, @required this.link}) : super(key: key);
  @override
  BasicUnitState createState() => BasicUnitState();
}
class BasicUnitState extends State<BasicUnit>{
  String postHeading;
  String postContent;
  String pictureUrl;
  String articleLink;
  void initState(){
    postHeading = widget.heading;
    postContent = widget.content;
    pictureUrl = widget.image;
    articleLink = widget.link;
  }
  @override
  Widget build(BuildContext context){
    return new Column(
      children:<Widget> [
      SizedBox(height: 70),
      new Padding(
      padding: EdgeInsets.all(30),
      child: new SizedBox(
        width: 400,
        height: 500,
        child: new Card(
          shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
        color: new Color(0xFF000000),
        child: new Padding(
          padding: EdgeInsets.all(20),
          child:
            new Column(
              children: <Widget> [
                new ClipRRect(
                borderRadius: BorderRadius.circular(25),
                  child: new Image.network(
                    '$pictureUrl',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover
                  )
                ),
                new Padding(
                  padding: EdgeInsets.all(20),
                  child:new Text(
                    '$postHeading',
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 25
                    )
                  )
                ),
                new Padding(
                  padding: EdgeInsets.all(20),
                  child: new Text(
                    '$postContent',
                    textAlign: TextAlign.left,
                    style: new TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 20
                    )
                  )
                ),
                new Padding(
                  padding: EdgeInsets.all(20),
                  child:new ElevatedButton(
                  child: Text(
                    'Read Story!',
                    style: new TextStyle(
                        fontSize: 18,
                        color: Color(0xFF000000),
                    )
                  ),
                  onPressed: () async {
                    try {
                      await launch(articleLink);
                    } catch(e) {}
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                    ),
                    primary: Color(0xFFFFFFFF),
                    padding: EdgeInsets.all(10)
                  ),
                ),
                )
              ]
            )
          )
        )
      )
    )]);
  }
}

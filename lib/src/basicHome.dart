// Comet by Alexander Abraham a.k.a. "The Black Unicorn"
// Licensed under the MIT license.

import 'constants.dart'
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BasicUnit extends StatefulWidget{
  final String heading;
  final String content;
  final String image;
  final String link;
  BasicUnit({
    Key key,
    @required this.heading,
    @required this.content,
    @required this.image,
    @required this.link
  }) : super(key: key);
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
              color: new accentColor,
              child: new Padding(
                padding: EdgeInsets.all(stdPadding),
                child:
                  new Column(
                    children: <Widget> [
                    new ClipRRect(
                      borderRadius: BorderRadius.circular(basicRounding),
                      child: new Image.network(
                        '$pictureUrl',
                        width: double.infinity,
                        height: imageWidth,
                        fit: BoxFit.cover
                      )
                    ),
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child:new Text(
                        '$postHeading',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          color: mainColor,
                          fontSize: basicRounding
                        )
                      )
                    ),
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child: new Text(
                        '$postContent',
                        textAlign: TextAlign.left,
                        style: new TextStyle(
                          color: mainColor,
                          fontSize: stdPadding
                        )
                      )
                    ),
                    new Padding(
                      padding: EdgeInsets.all(stdPadding),
                      child:new ElevatedButton(
                        child: Text(
                          'Read Story!',
                          style: new TextStyle(
                            fontSize: buttonFontSize,
                            color: accentColor,
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

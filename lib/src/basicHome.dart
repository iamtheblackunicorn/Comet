import 'package:flutter/material.dart';

class BasicUnit extends StatefulWidget{
  final String heading;
  final String content;
  BasicUnit({Key key, @required this.heading, @required this.content}) : super(key: key);
  @override
  BasicUnitState createState() => BasicUnitState();
}
class BasicUnitState extends State<BasicUnit>{
  String postHeading;
  String postContent;
  void initState(){
    postHeading = widget.heading;
    postContent = widget.content;
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
                    'https://github.com/iamtheblackunicorn/iamtheblackunicorn.github.io/raw/main/assets/buwa/images/wallpaperThirtySeven.jpg',
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
                )
              ]
            )
        )
      ))
    )]);
  }
}

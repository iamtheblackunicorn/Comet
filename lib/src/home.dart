import 'package:flutter/material.dart';

class Home extends StatelessWidget{
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
                    'Lorem ipsum',
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
                    'Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet. Lorem ipsum sit dolor amet.',
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

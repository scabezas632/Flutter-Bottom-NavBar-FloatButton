import 'package:flutter/material.dart';

class FourthTab extends StatelessWidget {
  const FourthTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.dashboard,
                size: 160.0,
                color: Colors.black,
              ),
              new Text('Cuarto Tab', style: new TextStyle(color: Colors.black),)
            ],
          ),
        ),
      ),
    );
  }
}
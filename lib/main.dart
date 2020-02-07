import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatefulWidget{
  @override
  _TravelState createState() => new _TravelState();
}

class _TravelState extends State<TravelApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Travel Guide",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Travel Guide"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal
              ),
              child: Text("One"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Text("Two"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              child: Text("Three"),
            ),
          ],
        )
      ),
    );
  }
}

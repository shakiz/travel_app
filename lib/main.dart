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
      ),
    );
  }
}

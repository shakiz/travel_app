import 'package:flutter/material.dart';
import 'location_details.dart';

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
      home: LocationDetail(),
    );
  }
}

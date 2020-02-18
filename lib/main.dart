import 'package:flutter/material.dart';
import 'package:travel_app/mocks/mock_location.dart';
import 'login.dart';
import 'models/location.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatefulWidget {
  @override
  _TravelState createState() => new _TravelState();
}

class _TravelState extends State<TravelApp> {
  //final Location demoLocation = MockLocation.fetchAny();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:travel_app/location_list.dart';
import 'package:travel_app/mocks/mock_location.dart';
import 'location_details.dart';
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
  final List<Location> locationList = MockLocation.fetchAll();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LocationList((locationList)),
    );
  }
}

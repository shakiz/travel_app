import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget {
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: _getLocations(context, location),
          ),
        ));
  }

  List<Widget> _getLocations(BuildContext context, Location location) {
    var dataList = List<Widget>();
    dataList.add(_renderCover(location.url, 200.0));
    dataList.addAll(_getFacts(context, location));
    dataList.addAll(_getPlaces(context, location));
    return dataList;
  }

  //returns location fact list
  List<Widget> _getFacts(BuildContext context, Location location) {
    var factList = List<Widget>();
    for (int start = 0; start < location.facts.length; start++) {
      factList.add(_getTitle(location.facts[start].title));
      factList.add(_getText(location.facts[start].text));
    }
    return factList;
  }

  //returns location places list
  List<Widget> _getPlaces(BuildContext context, Location location) {
    var factList = List<Widget>();
    for (int start = 0; start < location.places.length; start++) {
      factList.add(_getPlaceTitle(location.places[start].place));
    }
    return factList;
  }

  //returns text of a location
  Widget _getText(String text) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 10, 15),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }

  //returns title of a location
  Widget _getTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 15),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  //returns the popular place title of a location
  Widget _getPlaceTitle(String title) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 8, 8, 15),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  Widget _renderCover(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

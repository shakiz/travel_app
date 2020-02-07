import 'package:flutter/material.dart';
import 'models/location.dart';

class LocationDetail extends StatelessWidget{
  final Location location;

  LocationDetail(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(location.name),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _getFacts(location),
        )
    );
  }

  //returns location fact list
  List<Widget> _getFacts(Location location){
    var factList = List<Widget>();
    for(int start=0;start<location.facts.length;start++){
      factList.add(_getTitle(location.facts[start].title));
      factList.add(_getText(location.facts[start].text));
    }
    return factList;
  }

  //returns text of a location
  Widget _getText(String text){
    return  Text(text);
  }

  //returns title of a location
  Widget _getTitle(String title){
    return  Text(title);
  }

}
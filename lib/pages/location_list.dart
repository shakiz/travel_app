import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/location.dart';

import 'location_details.dart';

class LocationList extends StatelessWidget {
  final List<Location> locationList;

  LocationList(this.locationList);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations"),
      ),
      body: ListView.builder(
        itemCount: this.locationList.length,
        itemBuilder:
        _listViewItemBuilder, //this builder method wont take any params because its a callback
      ),
    );
  }

  //This will build list item
  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = this.locationList[index];
    return Container(
      margin: EdgeInsets.all(6),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Card(
            elevation: 4,
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              contentPadding: EdgeInsets.all(8),
              leading: _itemThumbnail(location),
              title: _itemTitle(location),
              onTap: () => _onClickListener(context, location),
            ),
          ),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.3), blurRadius: 10)]),
        ),
      ),
    );
  }

  //list item click listener
  void _onClickListener(BuildContext context, Location location) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail(location)));
  }

  //List item thmubnail generator
  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(
        location.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  //List item title generator
  Widget _itemTitle(Location location) {
    return Text('${location.name}', style: Styles.textDefault);
  }
}
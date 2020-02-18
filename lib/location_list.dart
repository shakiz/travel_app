import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/location_details.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/styles.dart';

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
    return ListTile(
      contentPadding: EdgeInsets.all(10),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _onClickListener(context, location),
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

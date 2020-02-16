import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> locationList;

  LocationList(this.locationList);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Locations", style: Styles.navBarTitle),
      ),
      body: ListView.builder(
        itemCount: this.locationList.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: EdgeInsets.all(10),
            leading: _itemThumbnail(this.locationList[index]),
            title: _itemTitle(this.locationList[index]),
          );
        },
      ),
    );
  }

  Widget _itemThumbnail(Location location) {
    return Container(
      constraints: BoxConstraints.tightFor(width: 100),
      child: Image.network(
        location.url,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  Widget _itemTitle(Location location) {
    return Text('${location.name}', style: Styles.textDefault);
  }
}

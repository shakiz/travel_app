import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';

import 'location_details.dart';

class LocationItemTile extends StatelessWidget {
  Location location;
  double width;

  LocationItemTile(this.location, this.width, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 20, top: 8, bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[500]!,
                  offset: const Offset(4, 4),
                  blurRadius: 8,
                  spreadRadius: 1),
            ]),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: _itemThumbnail(location)),
            Positioned(
              bottom: 44,
              left: 20,
              right: 20,
              child: _itemTitle(location),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: _itemLocation(location),
            ),
            const Positioned(
              bottom: 20,
              right: 20,
              child: Icon(Icons.star_border, color: Colors.white,),
            )
          ],
        ));
  }

  //list item click listener
  void _onClickListener(BuildContext context, Location location) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => LocationDetail(location)));
  }

  //List item thumbnail generator
  Widget _itemThumbnail(Location location) {
    return FadeInImage.assetNetwork(
      placeholder: 'assets/images/loading.gif',
      image: location.URL,
      height: 328,
      width: width,
      fit: BoxFit.fill,
    );
  }

  //List item title generator
  Widget _itemTitle(Location location) {
    return Text(
      location.Name,
      style: const TextStyle(color: Colors.white, fontSize: 20),
      textAlign: TextAlign.left,
    );
  }

  //List item location generator
  Widget _itemLocation(Location location) {
    return Row(
      children: [
        const Icon(Icons.location_on_outlined, color: Colors.white,),
        const SizedBox(width: 4,),
        Text(
          location.ExactLocation,
          style: const TextStyle(color: Colors.white, fontSize: 16),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/popular_places.dart';

class PopularPlacesItemTile extends StatelessWidget {
  PopularPlaces _popularPlaces;

  PopularPlacesItemTile(this._popularPlaces, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20, bottom: 20, top: 10),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        image: DecorationImage(
            image: AssetImage(_popularPlaces.url), fit: BoxFit.fill),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 10,
            spreadRadius: 4,
            color: Colors.black54.withOpacity(0.1),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.white70,
              child: Text(
            _popularPlaces.place,
            style: const TextStyle(
                color: Colors.black87,
                fontSize: 16,),
            textAlign: TextAlign.center,
          )),
        ],
      ),
    );
  }
}

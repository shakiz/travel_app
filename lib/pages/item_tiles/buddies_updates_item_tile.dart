import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:travel_app/models/buddies.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/popular_places.dart';

class BuddiesUpdatesItemTile extends StatelessWidget {
  Buddies _buddies;

  BuddiesUpdatesItemTile(this._buddies, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 258,
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 20, bottom: 20, top: 0),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        image: DecorationImage(
            image: AssetImage(_buddies.BuddyImage), fit: BoxFit.fill),
        boxShadow: <BoxShadow>[
          BoxShadow(
            offset: const Offset(1, 1),
            blurRadius: 2,
            spreadRadius: 1,
            color: Colors.black54.withOpacity(0.08),
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
              color: Colors.transparent,
              child: Text(
                _buddies.BuddyName,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }
}

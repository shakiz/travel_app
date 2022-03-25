import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/buddies.dart';
import 'package:travel_app/pages/item_tiles/buddies_updates_item_tile.dart';

class TravelBuddiesWidget extends StatefulWidget {
  const TravelBuddiesWidget({Key? key}) : super(key: key);

  @override
  _TravelBuddiesWidgetState createState() => _TravelBuddiesWidgetState();
}

class _TravelBuddiesWidgetState extends State<TravelBuddiesWidget> {
  final List<Buddies> _buddyList = AppData.fetchBuddies();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12.withOpacity(0.01),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Text(
                "Buddies Updates".toUpperCase(),
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              )),
          const SizedBox(height: 16,),
          SizedBox(
            height: 272,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: _buddyList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 64),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return BuddiesUpdatesItemTile(_buddyList[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

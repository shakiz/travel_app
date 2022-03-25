import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/pages/item_tiles/saved_location_item_tile.dart';
import 'package:travel_app/pages/widgets/saved_filter_widget.dart';
import 'package:travel_app/pages/widgets/search_widget.dart';

class SavedPlacesWidget extends StatefulWidget {
  const SavedPlacesWidget({Key? key}) : super(key: key);

  @override
  _SavedPlacesWidgetState createState() => _SavedPlacesWidgetState();
}

class _SavedPlacesWidgetState extends State<SavedPlacesWidget> {
  final List<Location> _savedLocations = AppData.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black12.withOpacity(0.01),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: SearchWidget(
              isCancelIconVisible: false,
              isAdvanceFilterVisible: false,
              inputFieldBackColor: Colors.white,
              hintText: 'Search places....',
              searchIconColor: Colors.black87,
              hintTextColor: Colors.black54,
              cancelIconColor: Colors.black87,
              searchBoxShadow: true,
            ),
          ),
          SizedBox(
            height: 76,
            child: ListView(
              padding: const EdgeInsets.only(left: 10, right: 10),
              scrollDirection: Axis.horizontal,
              children: [
                SavedFilterWidget(
                    iconPath: "assets/icons/hiking.png", filterText: "Hiking"),
                const SizedBox(
                  width: 32,
                ),
                SavedFilterWidget(
                    iconPath: "assets/icons/leisure.png",
                    filterText: "Leisure"),
                const SizedBox(
                  width: 32,
                ),
                SavedFilterWidget(
                    iconPath: "assets/icons/windsurfing.png",
                    filterText: "Windsurfing"),
                const SizedBox(
                  width: 32,
                ),
                SavedFilterWidget(
                    iconPath: "assets/icons/surfing.png",
                    filterText: "Surfing"),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Text(
                "Saved Places".toUpperCase(),
                style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
              )),
          const SizedBox(height: 16,),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: _savedLocations.length,
                shrinkWrap: true,
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 64),
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return SavedLocationItemTile(_savedLocations[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

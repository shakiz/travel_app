import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/pages/item_tiles/popular_places_item_tile.dart';

class LocationDetail extends StatefulWidget {
  Location location;

  LocationDetail(this.location, {Key? key}) : super(key: key);

  @override
  _LocationDetailState createState() => _LocationDetailState();
}

class _LocationDetailState extends State<LocationDetail> {
  late Location location;
  bool selected = true;

  @override
  void initState() {
    super.initState();
    location = widget.location;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              location != null ? location.Name : "Location Name",
              style: const TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: InkWell(
              child: const IconTheme(
                  data: IconThemeData(color: Colors.black),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black87,
                  )),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      selected = !selected;
                    });
                  },
                  child: Center(
                    child: AnimatedContainer(
                      width: selected ? 224.0 : 1890.0,
                      height: selected ? 190.0 : 224.0,
                      alignment: selected
                          ? Alignment.center
                          : AlignmentDirectional.topCenter,
                      duration: const Duration(seconds: 2),
                      curve: Curves.fastOutSlowIn,
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        child: Image.asset(
                          location.URL,
                          fit: BoxFit.fill,
                          height: 224,
                          width: 300,
                        ),
                      ),
                    ),
                  ),
                ),
                _getFacts(context, location),
                _getTitle('Popular places of ' + location.Name),
                _getPlaces(context, location)
              ],
            ),
          )),
    );
  }

  //returns location places list
  Widget _getPlaces(BuildContext context, Location location) {
    return SizedBox(
      height: 160,
      width: 160,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: location.Places.length,
          shrinkWrap: true,
          padding: const EdgeInsets.only(left: 20),
          itemBuilder: (BuildContext context, int index) {
            return TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: 1),
              curve: Curves.elasticOut,
              duration: Duration(milliseconds: 2000 * index),
              builder: (BuildContext context, double value, Widget? child) {
                return Transform.scale(
                    scale: value,
                    child: PopularPlacesItemTile(location.Places[index]));
              },
            );
          }),
    );
  }

  //returns location fact list
  Widget _getFacts(BuildContext context, Location location) {
    return ListView.builder(
        itemCount: location.Facts.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              _getTitle(location.Facts[index].title),
              _getText(location.Facts[index].text)
            ],
          );
        });
  }

  //returns text of a location
  Widget _getText(String text) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),
      child: Text(
        text,
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }

  //returns title of a location
  Widget _getTitle(String title) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }
}

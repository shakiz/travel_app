import 'package:flutter/material.dart';
import 'package:travel_app/models/location.dart';

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
              location != null ? location.Name : "Food Title",
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
                        borderRadius: const BorderRadius.all(Radius.circular(8)),
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
    return ListView.builder(
        itemCount: location.Places.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            children: [
              _getPlaceTitle(location.Places[index].place),
              _renderPlaceCover(location.Places[index].url, 84)
            ],
          );
        });
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
      padding: const EdgeInsets.fromLTRB(20, 0, 10, 15),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, color: Colors.black54),
      ),
    );
  }

  //returns title of a location
  Widget _getTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 15),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  //returns the popular place title of a location
  Widget _getPlaceTitle(String title) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 8, 8, 15),
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blueGrey),
      ),
    );
  }

  //returns popular place image
  Widget _renderPlaceCover(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(
        url,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}


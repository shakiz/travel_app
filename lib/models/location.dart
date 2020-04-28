import 'popular_places.dart';
import 'location_fact.dart';

class Location {
  final String name;
  final String url;
  final List<LocationFact> facts;
  final List<PopularPlaces> places;
  Location({this.name, this.url, this.facts, this.places});
}

import 'popular_places.dart';
import 'location_fact.dart';

class Location {
  final String Name;
  final String URL;
  final String ExactLocation;
  final List<LocationFact> Facts;
  final List<PopularPlaces> Places;
  Location({required this.Name, required this.URL, required this.ExactLocation, required this.Facts, required this.Places});
}
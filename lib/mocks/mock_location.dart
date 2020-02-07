import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location{
  static Location fetchAny(){
    return Location(
      name : "Dhaka",
      url : "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg",
      facts : <LocationFact>[
        LocationFact(
          title : "Capital",
          text : "Dhaka is the capital city of Bangladesh,in southern Asia. Set beside the Buriganga River, it’s at the center of national government, trade and culture. "
        ),
        LocationFact(
            title : "Culture",
            text : "Dhaka's annual cultural events, festivals and celebrations are Independence Day (26 March), the International Mother language Day (21 February), Victory Day, "
              "Pohela Boishakh, Ekushey Book Fair, Dhaka Art Summit, Rabindra Jayanti and Nazrul Jayanti; the Hindu festivals including the Durga Puja, Janmashtami and Rathayatra."
        )
      ]
    );
  }
}
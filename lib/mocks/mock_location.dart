import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location{
  static Location fetchAny(){
    return Location(
      name : "Dhaka",
      url : "https://images.squarespace-cdn.com/content/v1/5423f995e4b01248b3c04a4a/1413897706294-2P7KI59GZXOSJ78EUBO6/ke17ZwdGBToddI8pDm48kGTK98kVcUb8IrciLDJvxX0UqsxRUqqbr1mOJYKfIPR7LoDQ9mXPOjoJoqy81S2I8N_N4V1vUb5AoIIIbLZhVYxCRW4BPu10St3TBAUQYVKcgCB8U4gyuVN0Yde7lWYVWDyDXMPUC34VU5G6T_3y6YYCDq4s-XOnJIBPGC4XEkyx/image-asset.jpeg?format=1500w",
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
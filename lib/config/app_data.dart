import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/popular_places.dart';

import '../models/location.dart';
import '../models/location_fact.dart';

class AppData {
  static final List<Location> items = [
    Location(
        Name: 'Arashiyama Bamboo Grove',
      ExactLocation: 'Japan, Asia',
        URL:
            'https://www.jrailpass.com/blog/wp-content/uploads/2016/05/arashiyama-bamboo-grove-kyoto-e1466611768221.jpg',
        Facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
                  'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ],
        Places: <PopularPlaces>[
          PopularPlaces(
              place: 'Museum of Maritime Science',
              url:
                  'https://media-cdn.tripadvisor.com/media/photo-s/11/2b/06/12/dsc-1193-largejpg.jpg'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAdw_gEYIu-JRctfAlxoSD0N6OldmzqUGigeZ6-gzRTRTgLYLE&usqp=CAU'),
          PopularPlaces(
              place: 'Shiokaze Park',
              url:
                  'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/fuji-tv-building_glane.jpg'),
          PopularPlaces(
              place: 'Fuji Television',
              url:
                  'https://dimg04.c-ctrip.com/images/tg/736/409/908/9bd4b208d38b4f9d973e76d5c2e35984_C_500_500.jpg?proc=source%2Ftrip')
        ],),
    Location(
        Name: 'Mount Fuji',
  ExactLocation: 'Japan, Asia',
        URL:
            'https://www.planetware.com/photos-large/JPN/japan-mt-fuji-and-cherry-blossoms.jpg',
        Facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.')
        ],
        Places: <PopularPlaces>[
          PopularPlaces(
              place: 'Museum of Maritime Science',
              url:
                  'https://media-cdn.tripadvisor.com/media/photo-s/11/2b/06/12/dsc-1193-largejpg.jpg'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAdw_gEYIu-JRctfAlxoSD0N6OldmzqUGigeZ6-gzRTRTgLYLE&usqp=CAU'),
          PopularPlaces(
              place: 'Shiokaze Park',
              url:
                  'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/fuji-tv-building_glane.jpg'),
          PopularPlaces(
              place: 'Fuji Television',
              url:
                  'https://dimg04.c-ctrip.com/images/tg/736/409/908/9bd4b208d38b4f9d973e76d5c2e35984_C_500_500.jpg?proc=source%2Ftrip')
        ]),
    Location(
        Name: 'Kiyomizu-dera',
        ExactLocation: 'Japan, Asia',
        URL:
            'https://plingthinks.com/wp-content/uploads/2016/09/kiyomizu-dera-autumn-colors-kyoto-temple-e1556013806570.jpg',
        Facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
          LocationFact(
              title: 'Architectural Style',
              text: 'Japanese Buddhist architecture')
        ],
        Places: <PopularPlaces>[
          PopularPlaces(
              place: 'Museum of Maritime Science',
              url:
                  'https://media-cdn.tripadvisor.com/media/photo-s/11/2b/06/12/dsc-1193-largejpg.jpg'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAdw_gEYIu-JRctfAlxoSD0N6OldmzqUGigeZ6-gzRTRTgLYLE&usqp=CAU'),
          PopularPlaces(
              place: 'Shiokaze Park',
              url:
                  'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/fuji-tv-building_glane.jpg'),
          PopularPlaces(
              place: 'Fuji Television',
              url:
                  'https://dimg04.c-ctrip.com/images/tg/736/409/908/9bd4b208d38b4f9d973e76d5c2e35984_C_500_500.jpg?proc=source%2Ftrip')
        ]),
    Location(
        Name: 'Kinkaku-ji',
        ExactLocation: 'Japan, Asia',
        URL:
            'https://world-travel-guy-inboundhorizonsi.netdna-ssl.com/wp-content/uploads/2020/04/DSCF5510.jpg',
        Facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyoto, Japan. It is one of the most popular buildings in Japan, attracting a large number of visitors annually.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'The Golden Pavilion is set in a magnificent Japanese strolling garden.')
        ],
        Places: <PopularPlaces>[
          PopularPlaces(
              place: 'Museum of Maritime Science',
              url:
                  'https://media-cdn.tripadvisor.com/media/photo-s/11/2b/06/12/dsc-1193-largejpg.jpg'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAdw_gEYIu-JRctfAlxoSD0N6OldmzqUGigeZ6-gzRTRTgLYLE&usqp=CAU'),
          PopularPlaces(
              place: 'Shiokaze Park',
              url:
                  'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/fuji-tv-building_glane.jpg'),
          PopularPlaces(
              place: 'Fuji Television',
              url:
                  'https://dimg04.c-ctrip.com/images/tg/736/409/908/9bd4b208d38b4f9d973e76d5c2e35984_C_500_500.jpg?proc=source%2Ftrip')
        ]),
    Location(
        Name: 'Odaiba',
        ExactLocation: 'Japan, Asia',
        URL:
            'https://dailyartfixx.com/wp-content/uploads/2009/08/fuji-tv-building-odaiba.jpg',
        Facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
                  'Accessed via the Rainbow Bridge or the futuristic Yurikamome train, Odaiba is a high-tech entertainment hub on an artificial island in Tokyo Bay. Visitors head to the beach at Seaside Park, enjoy Mt. Fuji views from the Daikanransha Ferris wheel, and interact with robots at the Miraikan science museum. Malls include Aqua City and the Venice-themed VenusFort, and there are sushi bars with views along the waterfront.'),
          LocationFact(
              title: 'Did You Know',
              text:
                  'The pedestrian path begins a short walk from Shibaura-futo Station along the Yurikamome on the "Tokyo side" of the bridge, while Odaiba Kaihinkoen Station is the nearest station on the "Odaiba side."')
        ],
        Places: <PopularPlaces>[
          PopularPlaces(
              place: 'Museum of Maritime Science',
              url:
                  'https://media-cdn.tripadvisor.com/media/photo-s/11/2b/06/12/dsc-1193-largejpg.jpg'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url:
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSAdw_gEYIu-JRctfAlxoSD0N6OldmzqUGigeZ6-gzRTRTgLYLE&usqp=CAU'),
          PopularPlaces(
              place: 'Shiokaze Park',
              url:
                  'https://cdn.cheapoguides.com/wp-content/uploads/sites/2/2017/06/fuji-tv-building_glane.jpg'),
          PopularPlaces(
              place: 'Fuji Television',
              url:
                  'https://dimg04.c-ctrip.com/images/tg/736/409/908/9bd4b208d38b4f9d973e76d5c2e35984_C_500_500.jpg?proc=source%2Ftrip')
        ]),
  ];

  static final List<Category> categoryItems = [
    Category(
        id: 1,
        CategoryName: "Flight",
        BackColor: Styles.colors[0],
        CategoryIcon: 'assets/icons/flight.png'),
    Category(
        id: 2,
        CategoryName: "Hotel",
        BackColor: Styles.colors[1],
        CategoryIcon: 'assets/icons/hotel.png'),
    Category(
        id: 3,
        CategoryName: "Food",
        BackColor: Styles.colors[2],
        CategoryIcon: 'assets/icons/food.png'),
    Category(
        id: 4,
        CategoryName: "Event",
        BackColor: Styles.colors[3],
        CategoryIcon: 'assets/icons/event.png'),
    Category(
        id: 5,
        CategoryName: "Meeting",
        BackColor: Styles.colors[4],
        CategoryIcon: 'assets/icons/meeting.png'),
  ];

  static Location fetchAny() {
    //items static member so we have to call it with ClassName
    return AppData.items[0];
  }

  static List<Location> fetchAll() {
    return AppData.items;
  }

  static fetchCategory() {
    return AppData.categoryItems;
  }
}

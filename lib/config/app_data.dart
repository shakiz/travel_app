import 'package:travel_app/models/popular_places.dart';

import '../models/location.dart';
import '../models/location_fact.dart';

class AppData {
  static final List<Location> items = [
    Location(
        name: 'Arashiyama Bamboo Grove',
        url:
        'https://cdn-images-1.medium.com/max/2000/1*vdJuSUKWl_SA9Lp-32ebnA.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm'),
          LocationFact(
              title: 'How to Get There',
              text:
              'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.')
        ],
        places: <PopularPlaces>[
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
        name: 'Mount Fuji',
        url:
        'https://www.planetware.com/photos-large/JPN/japan-mt-fuji-and-cherry-blossoms.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'Japan’s Mt. Fuji is an active volcano about 100 kilometers southwest of Tokyo. Commonly called “Fuji-san,” it’s the country’s tallest peak, at 3,776 meters. A pilgrimage site for centuries, it’s considered one of Japan’s 3 sacred mountains, and summit hikes remain a popular activity. Its iconic profile is the subject of numerous works of art, notably Edo Period prints by Hokusai and Hiroshige.'),
          LocationFact(
              title: 'Did You Know',
              text:
              'There are three cities that surround Mount Fuji: Gotemba, Fujiyoshida and Fujinomiya.')
        ],
        places: <PopularPlaces>[
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
        name: 'Kiyomizu-dera',
        url:
        'https://media4.trover.com/T/5a97b80c8beb7fbf57002ffe/fixedw_large_4x.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'Kiyomizu-dera, officially Otowa-san Kiyomizu-dera, is an independent Buddhist temple in eastern Kyoto. The temple is part of the Historic Monuments of Ancient Kyoto UNESCO World Heritage site.'),
          LocationFact(
              title: 'Architectural Style',
              text: 'Japanese Buddhist architecture')
        ],
        places: <PopularPlaces>[
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
        name: 'Kinkaku-ji',
        url:
        'https://cdn-images-1.medium.com/max/1600/1*sncLZ1eNLYk3s-v76nJn8w.jpeg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'Kinkaku-ji, officially named Rokuon-ji, is a Zen Buddhist temple in Kyoto, Japan. It is one of the most popular buildings in Japan, attracting a large number of visitors annually.'),
          LocationFact(
              title: 'Did You Know',
              text:
              'The Golden Pavilion is set in a magnificent Japanese strolling garden.')
        ],
        places: <PopularPlaces>[
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
        name: 'Odaiba',
        url:
        'https://jp.openrice.com/userphoto/Article/0/1/0000CM2AF2F38CD85AB341j.jpg',
        facts: <LocationFact>[
          LocationFact(
              title: 'Summary',
              text:
              'Accessed via the Rainbow Bridge or the futuristic Yurikamome train, Odaiba is a high-tech entertainment hub on an artificial island in Tokyo Bay. Visitors head to the beach at Seaside Park, enjoy Mt. Fuji views from the Daikanransha Ferris wheel, and interact with robots at the Miraikan science museum. Malls include Aqua City and the Venice-themed VenusFort, and there are sushi bars with views along the waterfront.'),
          LocationFact(
              title: 'Did You Know',
              text:
              'The pedestrian path begins a short walk from Shibaura-futo Station along the Yurikamome on the "Tokyo side" of the bridge, while Odaiba Kaihinkoen Station is the nearest station on the "Odaiba side."')
        ],
        places: <PopularPlaces>[
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

  static Location fetchAny() {
    //items static member so we have to call it with ClassName
    return AppData.items[0];
  }

  static List<Location> fetchAll() {
    return AppData.items;
  }
}
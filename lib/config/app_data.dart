import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/group.dart';
import 'package:travel_app/models/group_member.dart';
import 'package:travel_app/models/popular_places.dart';
import 'package:travel_app/models/tab_icon_data.dart';

import '../models/location.dart';
import '../models/location_fact.dart';

class AppData {
  static final List<Location> items = [
    Location(
      Name: 'Arashiyama Bamboo Grove',
      ExactLocation: 'Japan, Asia',
      URL:
          // 'https://www.jrailpass.com/blog/wp-content/uploads/2016/05/arashiyama-bamboo-grove-kyoto-e1466611768221.jpg',
          'assets/places/place_1.jpg',
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
            url: 'assets/illustration/group_1.png'),
        PopularPlaces(
            place: 'Legolan Discovery Center Tokyo',
            url: 'assets/illustration/group_2.png'),
        PopularPlaces(
            place: 'Shiokaze Park', url: 'assets/illustration/group_3.png'),
        PopularPlaces(
            place: 'Fuji Television', url: 'assets/illustration/group_4.png')
      ],
    ),
    Location(
        Name: 'Mount Fuji',
        ExactLocation: 'Japan, Asia',
        URL:
            // 'https://www.planetware.com/photos-large/JPN/japan-mt-fuji-and-cherry-blossoms.jpg',
            'assets/places/place_2.jpg',
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
              url: 'assets/illustration/group_1.png'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url: 'assets/illustration/group_2.png'),
          PopularPlaces(
              place: 'Shiokaze Park', url: 'assets/illustration/group_3.png'),
          PopularPlaces(
              place: 'Fuji Television', url: 'assets/illustration/group_4.png')
        ]),
    Location(
        Name: 'Kiyomizu-dera',
        ExactLocation: 'Japan, Asia',
        URL:
            // 'https://plingthinks.com/wp-content/uploads/2016/09/kiyomizu-dera-autumn-colors-kyoto-temple-e1556013806570.jpg',
            'assets/places/place_3.jpg',
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
              url: 'assets/illustration/group_1.png'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url: 'assets/illustration/group_2.png'),
          PopularPlaces(
              place: 'Shiokaze Park', url: 'assets/illustration/group_3.png'),
          PopularPlaces(
              place: 'Fuji Television', url: 'assets/illustration/group_4.png')
        ]),
    Location(
        Name: 'Kinkaku-ji',
        ExactLocation: 'Japan, Asia',
        URL:
            // 'https://world-travel-guy-inboundhorizonsi.netdna-ssl.com/wp-content/uploads/2020/04/DSCF5510.jpg',
            'assets/places/place_4.jpg',
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
              url: 'assets/illustration/group_1.png'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url: 'assets/illustration/group_2.png'),
          PopularPlaces(
              place: 'Shiokaze Park', url: 'assets/illustration/group_3.png'),
          PopularPlaces(
              place: 'Fuji Television', url: 'assets/illustration/group_4.png')
        ]),
    Location(
        Name: 'Odaiba',
        ExactLocation: 'Japan, Asia',
        URL:
            // 'https://dailyartfixx.com/wp-content/uploads/2009/08/fuji-tv-building-odaiba.jpg',
            'assets/places/place_5.jpg',
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
              url: 'assets/illustration/group_1.png'),
          PopularPlaces(
              place: 'Legolan Discovery Center Tokyo',
              url: 'assets/illustration/group_2.png'),
          PopularPlaces(
              place: 'Shiokaze Park', url: 'assets/illustration/group_3.png'),
          PopularPlaces(
              place: 'Fuji Television', url: 'assets/illustration/group_4.png')
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

  static List<Group> groupInfo = [
    Group(
        GroupId: "1",
        GroupThumbnail: "assets/illustration/group_1.png",
        GroupName: "Kashmir Trip 2022",
        GroupCategory: "Camp and Travel",
        GroupFormationDate: "22nd June 2022",
        TotalMember: 20),
    Group(
        GroupId: "2",
        GroupThumbnail: "assets/illustration/group_2.png",
        GroupName: "Bandarban Trip 2022",
        GroupCategory: "Tour and Travel",
        GroupFormationDate: "22nd June 2022",
        TotalMember: 20),
    Group(
        GroupId: "3",
        GroupThumbnail: "assets/illustration/group_3.png",
        GroupName: "Saint Martin Tour",
        GroupCategory: "Sea and Travel",
        GroupFormationDate: "22nd June 2022",
        TotalMember: 20),
    Group(
        GroupId: "4",
        GroupThumbnail: "assets/illustration/group_4.png",
        GroupName: "Ladakhj Trip 2022",
        GroupCategory: "Camp and Travel",
        GroupFormationDate: "22nd June 2022",
        TotalMember: 20),
  ];

  static List<GroupMember> groupMemberInfo = [
    GroupMember(
        GroupMemberId: "1",
        GroupId: "1",
        GroupMemberName: "Jahid",
        GroupFormationDate: "22nd Jan 2021",
        GroupMemberHeading: "Travel and live a healthy life."),
    GroupMember(
        GroupMemberId: "2",
        GroupId: "1",
        GroupMemberName: "Rashed",
        GroupFormationDate: "22nd Jan 2021",
        GroupMemberHeading: "Allah is the best planner."),
    GroupMember(
        GroupMemberId: "3",
        GroupId: "1",
        GroupMemberName: "Sagor",
        GroupFormationDate: "22nd Jan 2021",
        GroupMemberHeading: "I am going to america."),
    GroupMember(
        GroupMemberId: "4",
        GroupId: "1",
        GroupMemberName: "Shakil",
        GroupFormationDate: "22nd Jan 2021",
        GroupMemberHeading: "Be faithful always and stay positive."),
  ];

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/icons/home.png',
      selectedImagePath: 'assets/icons/home.png',
      index: 0,
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/business_man.png',
      selectedImagePath: 'assets/icons/business_man.png',
      index: 1,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/message.png',
      selectedImagePath: 'assets/icons/message.png',
      index: 2,
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/icons/bookmark.png',
      selectedImagePath: 'assets/icons/bookmark.png',
      index: 3,
      isSelected: false,
      animationController: null,
    ),
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

  static fetchGroupInfo() {
    return AppData.groupInfo;
  }

  static fetchGroupMemberInfo() {
    return AppData.groupMemberInfo;
  }

  static fetchTabIconData() {
    return AppData.tabIconsList;
  }
}

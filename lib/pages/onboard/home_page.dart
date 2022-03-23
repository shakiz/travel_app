import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/group.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/models/tab_icon_data.dart';
import 'package:travel_app/pages/item_tiles/group_item_tile.dart';
import 'package:travel_app/pages/item_tiles/location_item_tile.dart';
import 'package:travel_app/pages/messages/messages_page.dart';
import 'package:travel_app/pages/saved/saved_places_widget.dart';
import 'package:travel_app/pages/widgets/bottom_menu_nav_view.dart';
import 'package:travel_app/pages/widgets/search_widget.dart';

import '../item_tiles/category_item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<TabIconData> tabIconsList = AppData.fetchTabIconData();
  final FocusNode _focusNode = FocusNode();
  final List<Category> _categoryList = AppData.fetchCategory();
  final List<Location> _locationList = AppData.fetchAll();
  final List<Group> _groupList = AppData.fetchGroupInfo();
  late PageController _pageController;
  final List<bool> _filterSelection = [false, false, false, false];
  late AnimationController animationController, itemAnimationController;
  late Animation<double> animation, animationTranslate, animationTwo;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    itemAnimationController = AnimationController(
        duration: const Duration(milliseconds: 400), vsync: this);
    animation =
        Tween<double>(begin: 1.0, end: 0.0).animate(animationController);
    animationTranslate =
        Tween<double>(begin: 0, end: 150.0).animate(animationController);
    animationTwo =
        Tween<double>(begin: 0.0, end: 1.0).animate(itemAnimationController);
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _focusNode.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            changeScreen(_currentIndex),
            Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedBuilder(
                  animation: animation,
                  builder: (context, child) {
                    return FadeTransition(
                      opacity: animation,
                      child: Transform.translate(
                        offset: Offset(0.0, animationTranslate.value),
                        child: BottomMenuNavView(
                          tabIconsList: tabIconsList,
                          addClick: () {
                            setState(() {
                              print("Added index:: $_currentIndex");
                              _currentIndex = 0;
                            });
                          },
                          changeIndex: (int index) {
                            print("Clicked index:: $index");
                            setState(() {
                              _currentIndex = index;
                            });
                          },
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }

  //region change bottom nav screen
  Widget changeScreen(int index) {
    if (index == 0) {
      itemAnimationController.forward();
      return homeScreen();
    } else if (index == 2) {
      itemAnimationController.forward();
      return const MessagesPage();
    } else if (index == 3) {
      itemAnimationController.forward();
      return const SavedPlacesWidget();
    }
    return Container();
  }

//endregion

  Widget homeScreen() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:
            const EdgeInsets.only(top: 24, bottom: 64, left: 16, right: 16),
        color: Colors.white.withOpacity(0.9),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    "assets/icons/menu.png",
                    height: 32,
                    width: 32,
                    color: Colors.black87.withOpacity(0.7),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      border: Border.all(color: Colors.black12),
                      color: Colors.brown.withOpacity(0.1)),
                  padding: const EdgeInsets.all(4),
                  child: Image.asset(
                    "assets/icons/user.png",
                    height: 24,
                    width: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi, Pablo',
                    style: TextStyle(color: Color(0xFF192733), fontSize: 16),
                  ),
                  Text(
                    "Good Morning",
                    style: TextStyle(
                      color: Color(0xFF192733),
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ]),
            const SizedBox(
              height: 16,
            ),
            SearchWidget(
              isAdvanceFilterVisible: true,
              isCancelIconVisible: false,
              inputFieldBackColor: Colors.grey.withOpacity(0.2),
              hintText: 'Search your destination',
              searchIconColor: Colors.black54,
              hintTextColor: Colors.black54,
              cancelIconColor: Colors.black,
              searchBoxShadow: false,
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 112,
              width: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      curve: Curves.elasticOut,
                      duration: Duration(milliseconds: 1000 * index),
                      builder:
                          (BuildContext context, double value, Widget? child) {
                        return Transform.scale(
                            scale: value,
                            child: CategoryItemTile(_categoryList[index]));
                      },
                    );
                  }),
            ),
            const SizedBox(
              height: 0,
            ),
            Wrap(
              children: [
                ChoiceChip(
                  label: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "All",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: _filterSelection[0]
                                ? Colors.white
                                : Colors.black87,
                            fontSize: 16),
                      )),
                  backgroundColor: Colors.transparent,
                  shadowColor: Colors.deepOrangeAccent,
                  selectedShadowColor: Colors.deepOrangeAccent,
                  selected: _filterSelection[0],
                  elevation: _filterSelection[0] ? 2 : 0,
                  selectedColor: Colors.deepOrangeAccent.withOpacity(0.7),
                  onSelected: (isSelected) {
                    setState(() {
                      _filterSelection[0] = true;
                      _filterSelection[1] = false;
                      _filterSelection[2] = false;
                      _filterSelection[3] = false;
                    });
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                ChoiceChip(
                  label: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: _filterSelection[1]
                                ? Colors.white
                                : Colors.black87,
                            fontSize: 16),
                      )),
                  backgroundColor: Colors.transparent,
                  selected: _filterSelection[1],
                  shadowColor: Colors.deepOrangeAccent,
                  selectedShadowColor: Colors.deepOrangeAccent,
                  elevation: _filterSelection[1] ? 2 : 0,
                  selectedColor: Colors.deepOrangeAccent.withOpacity(0.7),
                  onSelected: (isSelected) {
                    setState(() {
                      _filterSelection[0] = false;
                      _filterSelection[1] = true;
                      _filterSelection[2] = false;
                      _filterSelection[3] = false;
                    });
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                ChoiceChip(
                  label: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "New",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: _filterSelection[2]
                                ? Colors.white
                                : Colors.black87,
                            fontSize: 16),
                      )),
                  backgroundColor: Colors.transparent,
                  selected: _filterSelection[2],
                  elevation: _filterSelection[2] ? 2 : 0,
                  shadowColor: Colors.deepOrangeAccent,
                  selectedShadowColor: Colors.deepOrangeAccent,
                  selectedColor: Colors.deepOrangeAccent.withOpacity(0.7),
                  onSelected: (isSelected) {
                    setState(() {
                      _filterSelection[0] = false;
                      _filterSelection[1] = false;
                      _filterSelection[2] = true;
                      _filterSelection[3] = false;
                    });
                  },
                ),
                const SizedBox(
                  width: 16,
                ),
                ChoiceChip(
                  label: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Text(
                        "Top 10",
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            color: _filterSelection[3]
                                ? Colors.white
                                : Colors.black87,
                            fontSize: 16),
                      )),
                  backgroundColor: Colors.transparent,
                  selected: _filterSelection[3],
                  shadowColor: Colors.deepOrangeAccent,
                  selectedShadowColor: Colors.deepOrangeAccent,
                  elevation: _filterSelection[3] ? 2 : 0,
                  selectedColor: Colors.deepOrangeAccent.withOpacity(0.7),
                  onSelected: (isSelected) {
                    setState(() {
                      _filterSelection[0] = false;
                      _filterSelection[1] = false;
                      _filterSelection[2] = false;
                      _filterSelection[3] = true;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              height: 224,
              child: ListView.builder(
                itemCount: _locationList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return LocationItemTile(_locationList[index],
                      MediaQuery.of(context).size.width - 100);
                },
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Travel Groups",
                  style: TextStyle(color: Colors.black87, fontSize: 16),
                ),
                Text(
                  "Show More",
                  style: TextStyle(
                      color: Colors.black87.withOpacity(0.5), fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 156,
              child: ListView.builder(
                itemCount: _groupList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return GroupItemTile(_groupList[index],
                      MediaQuery.of(context).size.width - 120);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

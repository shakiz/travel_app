import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/models/category.dart';
import 'package:travel_app/models/location.dart';
import 'package:travel_app/pages/location_item_tile.dart';

import 'category_item_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Category> _categoryList = AppData.fetchCategory();
  final List<Location> _locationList = AppData.fetchAll();
  final List<BottomNavigationBarItem> _bottomNavWidgets = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
        ),
        backgroundColor: Colors.white.withOpacity(0.9),
        label: "Home"),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
      ),
      backgroundColor: Colors.white.withOpacity(0.9),
      label: "Profile",
    ),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.message,
        ),
        backgroundColor: Colors.white.withOpacity(0.9),
        label: "Message"),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.bookmark,
        ),
        backgroundColor: Colors.white.withOpacity(0.9),
        label: "Saved"),
  ];

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: _bottomNavWidgets,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          elevation: 4,
          type: BottomNavigationBarType.shifting,
        ),
        body: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 16),
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
                    height: 42,
                    width: 42,
                    color: Colors.black87.withOpacity(0.7),
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(21)),
                      border: Border.all(color: Colors.black12),
                      color: Colors.brown.withOpacity(0.1)),
                  padding: const EdgeInsets.all(12),
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
            Text(
              "Where you wanna go?",
              style: TextStyle(
                  color: Styles.baseTextColor,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Stack(
              children: [
                const Align(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search your destination',
                        fillColor: Colors.white),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                          color: Colors.grey[500]!,
                          offset: const Offset(4, 4),
                          blurRadius: 15,
                          spreadRadius: 1),
                      const BoxShadow(
                          color: Colors.white,
                          offset: Offset(-4, -4),
                          blurRadius: 15,
                          spreadRadius: 1),
                    ]),
                    height: 42,
                    width: 52,
                    child: ElevatedButton(
                      onPressed: () async {},
                      child: Image.asset(
                        "assets/icons/search.png",
                        color: Colors.white,
                        width: 24,
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Styles.baseColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 120,
              width: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _categoryList.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      curve: Curves.elasticOut,
                      duration: Duration(milliseconds: 600 * index),
                      builder:
                          (BuildContext context, double value, Widget? child) {
                            return Transform.scale(
                              scale: value,
                              child: CategoryItemTile(_categoryList[index])
                            );
                          },
                    );
                  }),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 328,
              child: ListView.builder(
                itemCount: _locationList.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index){
                  return LocationItemTile(_locationList[index], MediaQuery.of(context).size.width-100);
                }, //this builder method wont take any params because its a callback
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/config/styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: body(),
      ),
    );
  }

  Widget body() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.only(top: 24, bottom: 24, left: 12, right: 12),
        color: Colors.white,
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
                    height: 24  ,
                    width: 24,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16,),
            Text(
              "Where you wanna go?",
              style: TextStyle(
                color: Styles.baseTextColor,
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 16,),
            Stack(
              children: [
                const Align(
                  child: TextField(
                    decoration: InputDecoration(
                      //border: OutlineInputBorder(),
                      hintText: 'Search your destination',
                    ),
                  ),
                  alignment: Alignment.centerLeft,
                ),
                Align(
                  child: Wrap(
                    spacing: 0, // space between two icons
                    children: <Widget>[
                      SizedBox(
                        height: 42,
                        child: ElevatedButton(
                          onPressed: () async {

                          },
                          child: Image.asset(
                            "assets/icons/search.png",
                            color: Colors.white,
                          ),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Styles.baseColor),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              )),
                        ),
                      ) // icon
                    ],
                  ),
                  alignment: Alignment.topRight,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

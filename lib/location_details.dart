import 'package:flutter/material.dart';

class LocationDetail extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Travel Guide"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.teal
              ),
              child: Text("One"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Text("Two"),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.green
              ),
              child: Text("Three"),
            ),
          ],
        )
    );
  }
}
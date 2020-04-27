import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'location_list.dart';
import 'mocks/mock_location.dart';
import 'models/location.dart';

class Login extends StatelessWidget {
  final List<Location> locationList = MockLocation.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //avoid overlap with keyboard
      backgroundColor: Colors.blueGrey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/header.png"))),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: Text("Hello!!\nWelcome",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      autofocus: false,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white)),
                          labelText: 'Username',
                          hintText: 'Enter username here',
                          hintStyle: new TextStyle(color: Colors.white),
                          labelStyle: new TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    margin: EdgeInsets.all(8),
                    child: TextField(
                      autofocus: false,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: new OutlineInputBorder(
                              borderSide: new BorderSide(color: Colors.white)),
                          labelText: 'Password',
                          hintText: 'Enter password here',
                          hintStyle: new TextStyle(color: Colors.white),
                          labelStyle: new TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Center(
                      child: RaisedButton(
                        color: Colors.black54,
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LocationList(this.locationList)));
                        },
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    "Create new account",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

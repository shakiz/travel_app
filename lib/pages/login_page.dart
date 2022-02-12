import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:travel_app/config/app_data.dart';
import 'package:travel_app/models/location.dart';

import 'location_list.dart';

class Login extends StatelessWidget {
  final List<Location> locationList = AppData.fetchAll();
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
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/header.png"))),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      child: const Text("Hello!!\nWelcome",
                          style: TextStyle(
                              fontSize: 36,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      autofocus: false,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Username',
                          hintText: 'Enter username here',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      autofocus: false,
                      obscureText: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          labelText: 'Password',
                          hintText: 'Enter password here',
                          hintStyle: TextStyle(color: Colors.white),
                          labelStyle: TextStyle(color: Colors.white),
                          contentPadding: EdgeInsets.all(10)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    height: 50,
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    child: Center(
                      child: RaisedButton(
                        color: Colors.black54,
                        child: const Text(
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
                const SizedBox(
                  height: 20,
                ),
                const Center(
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
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travel_app/pages/onboard/login_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    timer = Timer(
      const Duration(milliseconds: 1500),
          () async {
        timer.cancel();
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage()));
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  Widget body() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Align(alignment: Alignment.center,child: Image.asset("assets/images/logo_main.PNG")),
        const SizedBox(height: 32,),
        Positioned(
          bottom: 40,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              "Welcome to Travelo",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                wordSpacing: 4,
                color: Colors.black87.withOpacity(0.8),
              ),
            ),
          ),
        ),
        const SizedBox(height: 16,),
        Positioned(
          bottom: 20,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Text(
              "Travel and be comfortable with our services.",
              textAlign: TextAlign.center,
              maxLines: 3,
              style: TextStyle(
                fontSize: 14,
                color: Colors.black87.withOpacity(0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

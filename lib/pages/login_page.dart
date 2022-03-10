import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/pages/widgets/login_bottom_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with TickerProviderStateMixin {
  late AnimationController _coffeeController;
  bool copAnimated = false;
  bool animateCafeText = false;

  @override
  void initState() {
    super.initState();
    _coffeeController = AnimationController(vsync: this);
    _coffeeController.addListener(() {
      if (_coffeeController.value > 0.5) {
        _coffeeController.stop();
        copAnimated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          animateCafeText = true;
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _coffeeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: SingleChildScrollView(
          child: Column(
            children: [
              // White Container top half
              AnimatedContainer(
                duration: const Duration(seconds: 1),
                height: copAnimated ? screenHeight / 2.25 : screenHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(copAnimated ? 40.0 : 0.0),
                    bottomRight: Radius.circular(copAnimated ? 40.0 : 0.0),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Visibility(
                      visible: !copAnimated,
                      child: Lottie.asset(
                        'assets/images/travel_splash_anim.json',
                        controller: _coffeeController,
                        onLoaded: (composition) {
                          _coffeeController
                            ..duration = composition.duration
                            ..forward();
                        },
                      ),
                    ),
                    Visibility(
                      visible: copAnimated,
                      child: Image.asset(
                        'assets/images/splash.png',
                        height: 160.0,
                        width: 160.0,
                      ),
                    ),
                    Center(
                      child: AnimatedOpacity(
                        opacity: animateCafeText ? 1 : 0,
                        duration: const Duration(seconds: 1),
                        child: Text(
                          'T R A V E L O',
                          style: TextStyle(fontSize: 50.0, color: Colors.black87.withOpacity(0.3)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Text bottom part
              Visibility(
                  visible: copAnimated, child: const LoginBottomWidget()),
            ],
          ),
        ),
      ),
    );
  }
}

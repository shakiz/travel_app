import 'package:flutter/material.dart';
import 'package:travel_app/config/styles.dart';
import 'package:travel_app/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //avoid overlap with keyboard
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  Widget body(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(8),
                child: Text("Hello!!\nWelcome",
                    style: TextStyle(
                        fontSize: 36,
                        color: Styles.baseTextColor,
                        fontWeight: FontWeight.bold)),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: const TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: 'Enter username',
                    contentPadding: EdgeInsets.all(12),
                    hintStyle: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey),
                ),
                padding: const EdgeInsets.only(left: 0.0, right: 10.0),
                child: const TextField(
                  obscureText: true,
                  textAlign: TextAlign.left,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.password),
                    border: InputBorder.none,
                    hintText: 'Enter Password',
                    contentPadding: EdgeInsets.all(12),
                    hintStyle: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Forgot password?",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 16.0, right: 16.0),
                alignment: Alignment.center,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all(Styles.baseColor),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      )),
                  onPressed: () async {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 16.0,
                      horizontal: 8.0,
                    ),
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const Center(
                child: Text(
                  "Create new account",
                  style: TextStyle(color: Colors.black87, fontSize: 18),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}

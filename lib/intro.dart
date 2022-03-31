import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/constants.dart';
import 'package:flutter_web_portfolio/screens/home/home_screen.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return Timer(Duration(seconds: 3), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("HELLO"),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Padding(
              padding: const EdgeInsets.only(bottom: defaultPadding),
              child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                curve: Curves.easeInOutSine,
                duration: Duration(seconds: 2),
                builder: (context, double value, child) => Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Loading..",
                            style: TextStyle(color: Colors.white),
                          ),
                          Text((value * 100).toInt().toString() + "%"),
                        ],
                      ),
                      SizedBox(height: defaultPadding / 2),
                      LinearProgressIndicator(
                        value: value,
                        color: primaryColor,
                        backgroundColor: darkColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

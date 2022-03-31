import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/screens/home/components/home_banner.dart';
import 'package:flutter_web_portfolio/screens/home/components/my_projects.dart';
import 'package:flutter_web_portfolio/screens/main/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeBanner(),
        // HighLightsInfo(),
        MyProjects(),
        // Recommendations(),
      ],
    );
  }
}

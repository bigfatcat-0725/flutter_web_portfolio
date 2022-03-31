import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/constants.dart';

class ProjectDetail extends StatelessWidget {
  const ProjectDetail({Key? key, required this.detailText}) : super(key: key);
  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkColor,
        elevation: 0,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(defaultPadding),
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.7,
          decoration: BoxDecoration(
            color: secondaryColor,
          ),
          child: Text(
            detailText,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

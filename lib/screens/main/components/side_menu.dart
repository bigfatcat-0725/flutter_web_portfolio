import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_portfolio/constants.dart';
import 'package:flutter_web_portfolio/screens/main/components/area_info_text.dart';
import 'package:flutter_web_portfolio/screens/main/components/coding.dart';
import 'package:flutter_web_portfolio/screens/main/components/knowledges.dart';
import 'package:flutter_web_portfolio/screens/main/components/my_info.dart';
import 'package:flutter_web_portfolio/screens/main/components/skills.dart';
import 'package:url_launcher/url_launcher.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            MyInfo(),
            Expanded(
              child: SingleChildScrollView(
                primary: false,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Country",
                      text: "Republic of Korea",
                    ),
                    AreaInfoText(
                      title: "City",
                      text: "Seoul",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "26",
                    ),
                    Skills(),
                    SizedBox(height: defaultPadding),
                    Coding(),
                    Knowledges(),
                    Divider(),
                    SizedBox(height: defaultPadding / 2),
                    TextButton(
                      onPressed: () {
                        launch(
                            'https://clean-buckthorn-e87.notion.site/395658de73ef40c3b206f25039f0af83');
                      },
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "NOTION RESUME",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .color,
                              ),
                            ),
                            SizedBox(width: defaultPadding / 2),
                            SvgPicture.asset("assets/icons/download.svg")
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      color: Color(0xFF24242E),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButton(
                            onPressed: () {
                              launch('https://github.com/bigfatcat-0725');
                            },
                            icon: SvgPicture.asset("assets/icons/github.svg"),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Text('last update : 2022/03/31'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

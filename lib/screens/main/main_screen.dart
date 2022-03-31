import 'package:flutter/material.dart';
import 'package:flutter_web_portfolio/constants.dart';
import 'package:flutter_web_portfolio/responsive.dart';
import 'package:flutter_web_portfolio/screens/main/components/side_menu.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;

  void openDialog() {
    Future.delayed(Duration(seconds: 1), () {
      print(Get.isDialogOpen);
    });

    Get.dialog(AlertDialog(
      title: Text('Dialog'),
      content: Text('This is a Dialog'),
      actions: [
        TextButton(
          onPressed: () => Get.back(),
          child: Text('Close'),
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // We hide the appbar on desktop
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ),
            ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(),
                ),
              SizedBox(width: defaultPadding),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...children,
                      // our footer
                    ],
                  ),
                ),
              ),
              SizedBox(width: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

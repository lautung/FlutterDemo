import 'package:flutter/material.dart';
import 'package:flutter_demo/customWidget/dir.dart';
import 'package:flutter_demo/routeTable.dart';

void main() => runApp(CustomWidgetMain());

class CustomWidgetMain extends StatelessWidget {
  const CustomWidgetMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteTable.getInstance(),
      home: Dir(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/fileOperation/dir.dart';
import 'package:flutter_demo/routeTable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: RouteTable.getInstance(),
      home: Dir(),
    );
  }
}

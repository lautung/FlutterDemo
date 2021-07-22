import 'package:flutter/material.dart';
import 'package:flutter_demo/routeTable.dart';

class Dir extends StatefulWidget {
  const Dir({Key? key}) : super(key: key);

  @override
  _DirState createState() => _DirState();
}

class _DirState extends State<Dir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('自定义组件'),
      ),
      body: ListView(
        children: [
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteTable.composeWidgetRoute),
              child: Text('组合Widget')),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteTable.customPaintRoute),
              child: Text('自绘组件（CustomPaint与Canvas）')),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, RouteTable.gradientCircularProgressRoute),
              child: Text('实现RenderObject')),
        ],
      ),
    );
  }
}

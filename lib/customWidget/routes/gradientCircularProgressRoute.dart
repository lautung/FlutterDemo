import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GradientCircularProgressRoute extends StatefulWidget {
  const GradientCircularProgressRoute({Key? key}) : super(key: key);

  @override
  _GradientCircularProgressRouteState createState() =>
      _GradientCircularProgressRouteState();
}

class _GradientCircularProgressRouteState
    extends State<GradientCircularProgressRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("圆形背景渐变进度条"),
      ),
      body: null,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_demo/customWidget/widgets/gradientButton.dart';

class GradientButtonRoute extends StatefulWidget {
  const GradientButtonRoute({Key? key}) : super(key: key);

  @override
  _GradientButtonRouteState createState() => _GradientButtonRouteState();
}

class _GradientButtonRouteState extends State<GradientButtonRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("示例"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            GradientButton(
              child: Text("111111"),
              colors: [Colors.orange, Colors.red],
              height: 50,
              onTap: () {
                print("button click 111111");
              },
            ),
            GradientButton(
              child: Text("222222"),
              colors: [Colors.lightGreen, Colors.green],
              height: 50,
              onTap: () {
                print("button click 222222");
              },
            ),
            GradientButton(
              child: Text("333333"),
              colors: [Colors.lightBlue, Colors.blueAccent],
              height: 50,
              onTap: () {
                print("button click 333333");
              },
            ),
          ],
        ),
      ),
    );
  }
}

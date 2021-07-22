import 'package:flutter/material.dart';
import 'package:flutter_demo/routeTable.dart';

class ComposeWidgetRoute extends StatelessWidget {
  const ComposeWidgetRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('组合Widget'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                        context, RouteTable.gradientButtonRoute);
                  },
                  child: Text("GradientButton")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteTable.turnBoxRoute);
                  },
                  child: Text("TurnBox")),
            ],
          ),
        ));
  }
}

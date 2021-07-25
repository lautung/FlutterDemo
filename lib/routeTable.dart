import 'package:flutter/widgets.dart';
import 'package:flutter_demo/customWidget/routes/gradientButtonRoute.dart';
import 'customWidget/routes/composeWidgetRoute.dart';
import 'customWidget/routes/customPaintRoute.dart';
import 'customWidget/routes/gradientCircularProgressRoute.dart';
import 'customWidget/routes/turnBoxRoute.dart';
import 'package:flutter_demo/fileOperation/routes/fileOperationRoute.dart';
import 'package:flutter_demo/fileOperation/routes/httpClientRequestRoute.dart';
import 'package:flutter_demo/fileOperation/routes/dioRequestRoute.dart';

class RouteTable {
  static String gradientButtonRoute = '/composeWidgetRoute/gradientButtonRoute';
  static String turnBoxRoute = '/composeWidgetRoute/turnBoxRoute';
  static String composeWidgetRoute = '/composeWidgetRoute';
  static String customPaintRoute = '/customPaintRoute';
  static String gradientCircularProgressRoute =
      '/gradientCircularProgressRoute';
  static String fileOperationRoute = '/fileOperationRoute';
  static String httpClientRequestRoute = '/httpClientRequestRoute';
  static String dioRequestRoute = '/dioRequestRoute';

  static Map<String, WidgetBuilder> _routes = {};

  static Map<String, WidgetBuilder> getInstance() {
    _routes = {
      RouteTable.composeWidgetRoute: (context) => ComposeWidgetRoute(),
      RouteTable.gradientButtonRoute: (context) => GradientButtonRoute(),
      RouteTable.turnBoxRoute: (context) => TurnBoxRoute(),
      RouteTable.customPaintRoute: (context) => CustomPaintRoute(),
      RouteTable.gradientCircularProgressRoute: (context) =>
          GradientCircularProgressRoute(),
      RouteTable.fileOperationRoute: (context) => FileOperationRoute(),
      RouteTable.httpClientRequestRoute: (context) => HttpClientRequestRoute(),
      RouteTable.dioRequestRoute: (context) => DioRequestRoute(),
    };
    return _routes;
  }
}

import 'package:flutter/material.dart';

void main() => runApp(InheritedWidgetTestRoute());

class InheritedWidgetTestRoute extends StatefulWidget {
  const InheritedWidgetTestRoute({Key? key}) : super(key: key);

  @override
  _InheritedWidgetTestRouteState createState() =>
      _InheritedWidgetTestRouteState();
}

class _InheritedWidgetTestRouteState extends State<InheritedWidgetTestRoute> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('InheritedWidgetTestRoute'),
        ),
        body: Center(
          child: ShareDataWidget(
            data: count,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: _TestWidget(),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      count++;
                    });
                  },
                  child: Text("Increment"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ShareDataWidget extends InheritedWidget {
  const ShareDataWidget({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  final int data;

  static ShareDataWidget of(BuildContext context) {
    final ShareDataWidget? result =
        context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
    assert(result != null, 'No ShareDataWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ShareDataWidget old) {
    return old.data != this.data;
  }
}

class _TestWidget extends StatefulWidget {
  const _TestWidget({Key? key}) : super(key: key);

  @override
  __TestWidgetState createState() => __TestWidgetState();
}

class __TestWidgetState extends State<_TestWidget> {
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    //父或祖先widget中的InheritedWidget改变(updateShouldNotify返回true)时会被调用。
    //如果build中没有依赖InheritedWidget，则此回调不会被调用。
    print("Dependencies change");
  }

  @override
  Widget build(BuildContext context) {
    return new Text(ShareDataWidget.of(context).data.toString());
  }
}

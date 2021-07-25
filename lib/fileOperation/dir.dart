import 'package:flutter/material.dart';
import 'package:flutter_demo/routeTable.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                  Navigator.pushNamed(context, RouteTable.fileOperationRoute),
              child: Text('文件操作')),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                  context, RouteTable.httpClientRequestRoute),
              child: Text("HttpClient发起HTTP请求")),
          ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, RouteTable.dioRequestRoute),
              child: Text("Dio发起HTTP请求")),
          ElevatedButton(
              onPressed: () {
                Fluttertoast.showToast(msg: "暂未开发...");
              },
              child: Text("Http分块下载")),
        ],
      ),
    );
  }
}

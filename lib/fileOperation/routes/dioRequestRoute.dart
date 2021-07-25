import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DioRequestRoute extends StatefulWidget {
  const DioRequestRoute({Key? key}) : super(key: key);

  @override
  _DioRequestRouteState createState() => _DioRequestRouteState();
}

class _DioRequestRouteState extends State<DioRequestRoute> {
  String _content = "";
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HttpClient发起HTTP请求"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  if (_loading == true) {
                    return;
                  }
                  //
                  setState(() {
                    _loading = true;
                    _content = "正在请求...";
                  });
                  //
                  _content = await _httpClient();

                  setState(() {
                    _loading = false;
                  });
                },
                child: Text("获取百度首页"),
              ),
              Container(
                width: MediaQuery.of(context).size.width - 50.0,
                child: Text(_content.replaceAll(new RegExp(r"\s"), "")),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> _httpClient() async {
    try {
      Dio dio = new Dio();
      Response content = await dio.getUri(Uri.parse("https://www.baidu.com/"));
      return content.data.toString() ?? "";
    } catch (e) {
      return "请求失败：$e";
    } finally {}
  }
}

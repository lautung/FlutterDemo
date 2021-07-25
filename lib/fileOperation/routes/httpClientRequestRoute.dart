import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';

class HttpClientRequestRoute extends StatefulWidget {
  const HttpClientRequestRoute({Key? key}) : super(key: key);

  @override
  _HttpClientRequestRouteState createState() => _HttpClientRequestRouteState();
}

class _HttpClientRequestRouteState extends State<HttpClientRequestRoute> {
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
    late final HttpClient httpClient;
    try {
      //创建httpClient
      httpClient = new HttpClient();
      //打开Http连接
      HttpClientRequest httpClientRequest =
          await httpClient.getUrl(Uri.parse("https://www.baidu.com/"));
      //使用iPhone的UA
      httpClientRequest.headers.add("user-agent",
          "Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1");
      HttpClientResponse response = await httpClientRequest.close();
      print(response.headers);
      return await response.transform(utf8.decoder).join();
    } catch (e) {
      return "请求失败：$e";
    } finally {
      httpClient.close();
    }
  }
}

import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController _usernameController = new TextEditingController();

  @override
  void initState() {
    super.initState();
    _usernameController.addListener(() {
      debugPrint(_usernameController.text);
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: AppBar(
          title: new Text('输入框及表单'),
        ),
        body: new Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              autofocus: true,
              decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名和邮箱",
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              autofocus: false,
              decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
            )
          ],
        ),
      ),
    );
  }
}

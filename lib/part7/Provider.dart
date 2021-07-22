import 'package:flutter/material.dart';

// 一个通用的InheritedWidget，保存任需要跨组件共享的状态
class InheritedProvider<T> extends InheritedWidget {
  const InheritedProvider({
    Key? key,
    required this.data,
    required Widget child,
  }) : super(key: key, child: child);

  //共享状态使用泛型
  final T data;

  static InheritedProvider of(BuildContext context) {
    final InheritedProvider? result =
        context.dependOnInheritedWidgetOfExactType<InheritedProvider>();
    assert(result != null, 'No InheritedProvider found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(InheritedProvider<T> old) {
    //在此简单返回true，则每次更新都会调用依赖其的子孙节点的`didChangeDependencies`。
    return true;
  }
}

class ChangeNotifierProvider<T extends ChangeNotifier> extends StatefulWidget {
  const ChangeNotifierProvider(
      {Key? key, required this.data, required this.child})
      : super(key: key);

  final T data;
  final Widget child;

  static T of<T>(BuildContext context){
    final type =
    return
  }

  @override
  _ChangeNotifierProviderState createState() => _ChangeNotifierProviderState();
}

class _ChangeNotifierProviderState extends State<ChangeNotifierProvider> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

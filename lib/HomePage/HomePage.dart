import 'package:flutter/material.dart';

//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => new HomePageState();
}



class HomePageState extends State<HomePage> {
//  onStateChanged = flutterWebViewPlugin.ons

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("首页"),
          backgroundColor: Colors.orange, //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('商品详情'),
        ),
      ),
    );
  }
}
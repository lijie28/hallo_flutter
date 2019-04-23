import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  ShoppingCartState createState() => new ShoppingCartState();
}

class ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("购物车"),
          backgroundColor: Colors.orange, //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new Center(
          child: new Text('购物车'),
        ),
      ),
    );
  }
}
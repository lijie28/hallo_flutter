import 'package:flutter/material.dart';

//new GoodsDetail(title:title)

class GoodsDetail extends StatefulWidget {
  String title;
  //构造器传递数据（并且接收上个页面传递的数据）
  GoodsDetail({Key key, this.title}) : super(key: key);

  @override
  GoodsDetailState createState(){
    return new GoodsDetailState(title: this.title);
  }

}


class GoodsDetailState extends State<GoodsDetail> {
  String title;
  GoodsDetailState({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
          backgroundColor: Colors.orange, //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
          brightness: Brightness.dark,
        ),
        body: new Center(
          child: new MaterialButton(
            color: Colors.orange,
            textColor: Colors.white,
            child: new Text('返回'),
            onPressed: () {
              // ...
              Navigator.pop(context);
              print("返回");
            },
          ),
        ),
      );
  }
}
import 'package:flutter/material.dart';

class ShoppingCart extends StatefulWidget {
  @override
  ShoppingCartState createState() => new ShoppingCartState();
}

class ShoppingCartState extends State<ShoppingCart> {

  List<String> strItems = <String>[
    '图标 -> keyboard', '图标 -> print',
    '图标 -> router', '图标 -> pages',
    '图标 -> zoom_out_map', '图标 -> zoom_out',
    '图标 -> youtube_searched_for', '图标 -> wifi_tethering',
    '图标 -> wifi_lock', '图标 -> widgets',
    '图标 -> weekend', '图标 -> web',
    '图标 -> accessible', '图标 -> ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard), new Icon(Icons.print),
    new Icon(Icons.router), new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
    new Icon(Icons.weekend), new Icon(Icons.web),
    new Icon(Icons.accessible), new Icon(Icons.ac_unit),
  ];

  Widget buildListData(BuildContext context, String strItem, Icon iconItem,int count) {
    return new ListTile(
      isThreeLine: false,
      leading: iconItem,
      title: new Text(strItem),
      trailing: new Icon(Icons.keyboard_arrow_right),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return new AlertDialog(
              title: new Text(
                'ListViewDemo:$count',
                style: new TextStyle(
                  color: Colors.black54,
                  fontSize: 18.0,
                ),
              ),
              content: new Text('您选择的item内容为:$strItem'),
            );
          },
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("购物车"),
          backgroundColor: Colors.orange, //设置appbar背景颜色
          centerTitle: true, //设置标题是否局中
        ),
        body: new ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),
            itemExtent: 80.0,
            itemCount: iconItems.length,
            itemBuilder: (BuildContext context,int index){
            return new Container(
              child: new Column(
                children: <Widget>[

                  buildListData(context, strItems[index], iconItems[index],index),
                  new Divider()

                ],
              ),
            );
          },
          )
        ),
    );
  }
}
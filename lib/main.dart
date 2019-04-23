import 'package:flutter/material.dart';
import 'package:hello_flutter/HomePage/HomePage.dart';
import 'package:hello_flutter/Mine/Mine.dart';
import 'package:hello_flutter/ShoppingCart/ShoppingCart.dart';

void main() => runApp(App());


class App extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Title',
      theme: new ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: new MyApp(),
    );
  }

}


class MyApp extends StatefulWidget {

  // This widget is the root of your application.
  @override
  MyAppState createState() => new MyAppState();
}


class MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  final _pageList = [
    new HomePage(),
    new ShoppingCart(),
    new Mine(),
  ];

  var _textIconList = const [
    //[0]是标题text,[1]是对应icon
     ['首页',Icon(Icons.home)],
     ['购物车',Icon(Icons.shopping_cart)],
     ['我的',Icon(Icons.settings)],
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //
  List getBottomBarItems(List textIcon){
      var newList =  <BottomNavigationBarItem>[];
      for (List ti in textIcon){
          newList.add(BottomNavigationBarItem(icon: ti[1], title: Text(ti[0])));
      }
      return newList;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: AppBar(
//        title: Text(_textIconList[_selectedIndex][0]),
//      ),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: getBottomBarItems(_textIconList),
        currentIndex: _selectedIndex,
        fixedColor: Colors.orange,
        onTap: _onItemTapped,

      ),
    );
  }

}









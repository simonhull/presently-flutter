import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenIOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            title: Text("Friends"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart"),
          ),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text("Home"),
              ),
              child: new Container(),
            );
          },
        );
      },
    );
  }
}

class HomeScreenAndroid extends StatefulWidget {
  @override
  HomeScreenAndroidState createState() {
    return new HomeScreenAndroidState();
  }
}

class HomeScreenAndroidState extends State<HomeScreenAndroid>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Present-ly"),
      ),
      bottomNavigationBar: TabBar(
        labelColor: Colors.blue,
        controller: TabController(
          vsync: this,
          length: 3,
        ),
        tabs: <Widget>[
          Tab(
            icon: Icon(
              Icons.home,
              color: Colors.blue,
            ),
            text: "Home",
          ),
          Tab(
            icon: Icon(
              Icons.group,
              color: Colors.blue,
            ),
            text: "Friends",
          ),
          Tab(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.blue,
            ),
            text: "Cart",
          ),
        ],
      ),
      body: new Container(),
    );
  }
}

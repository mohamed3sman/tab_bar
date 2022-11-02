import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'App Bar'
          ),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.person),),
            Tab(icon: Icon(Icons.settings),),
          ]),
        ),
        body: TabBarView(children: [
          Container(
            color: Colors.orange,
            child: Center(
              child: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.deepOrange,
            child: Center(
              child: Text(
                'Person',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            child: Center(
              child: Text(
                'Settings',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

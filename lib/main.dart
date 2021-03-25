import 'package:flutter/material.dart';

import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My Portfolio',
            ),
          ),
          drawer: SideDrawer(),
          body: Center(
            child: Text('Home'),
          )),
    );
  }
}

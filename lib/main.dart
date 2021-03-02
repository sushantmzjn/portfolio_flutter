import 'package:flutter/material.dart';

import 'drawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[700]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Portfolio'),
        ),
        drawer: SideDrawer(),
        body: Center(
          child: Text('My project'),
        ),
      ),
    );
  }
}

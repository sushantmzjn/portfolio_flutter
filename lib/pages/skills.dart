import 'package:flutter/material.dart';
import 'package:myPortfolio/drawer.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Skills'),
        ),
        drawer: SideDrawer(),
        body: Center(
          child: Text(
            'My skils',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

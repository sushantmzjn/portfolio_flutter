import 'package:flutter/material.dart';
import 'package:myPortfolio/drawer.dart';

void main() => runApp(About());

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[700]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        drawer: SideDrawer(),
        body: Center(
          child: Text(
            'About me',
            style: TextStyle(
                fontSize: 20, color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

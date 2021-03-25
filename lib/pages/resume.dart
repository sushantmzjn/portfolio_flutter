import 'package:flutter/material.dart';
import 'package:myPortfolio/drawer.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
        drawer: SideDrawer(),
        appBar: AppBar(
          title: Text('Resume'),
        ),
        body: Center(child: Text('Resume')),
      ),
    );
  }
}

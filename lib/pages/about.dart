import 'package:flutter/material.dart';
import 'package:myPortfolio/drawer.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
        appBar: AppBar(
          title: Text('About'),
        ),
        drawer: SideDrawer(),
        body: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text(
                              'Name',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'LOcation',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text(
                              'DOB',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Phone No.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text(
                              'Address',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Email Address',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: [
                            Text(
                              'Email',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Website',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                          child: Row(children: [
                            Text(
                              'Contact',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                'Website11',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ]),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent[400],
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Center(
                  child: Container(
                    width: 250,
                    height: 45,
                    alignment: Alignment.center,
                    child: Text(
                      'About Me',
                      style: TextStyle(
                          fontFamily: 'Dosis',
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.indigo[300],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:myPortfolio/main.dart';
import './pages/about.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Column(children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://instagram.fktm7-1.fna.fbcdn.net/v/t51.2885-19/s150x150/74917699_2463494367262489_3021098863797731328_n.jpg?tp=1&_nc_ht=instagram.fktm7-1.fna.fbcdn.net&_nc_ohc=fWtuFtmfZq0AX_crvAY&oh=b3e48f355189207e03fe46666946c23d&oe=6066D456',
                        ),
                        fit: BoxFit.fill),
                  ),
                ),
                Center(
                  child: Text(
                    'Sushant Maharjan',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    'sushantmzjn@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
            ),
          ),
          ListTile(
            tileColor: Colors.grey[700],
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'My project',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyApp(),
                  ));
            },
          ),
          ListTile(
            tileColor: Colors.grey[700],
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'Skills',
              style: TextStyle(fontSize: 18),
            ),
            onTap: null,
          ),
          ListTile(
            tileColor: Colors.grey[700],
            leading: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'About',
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => About(),
                  ));
            },
          )
        ],
      ),
    );
  }
}

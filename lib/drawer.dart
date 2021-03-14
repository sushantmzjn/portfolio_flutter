import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myPortfolio/pages/skills.dart';
import './pages/about.dart';

class SideDrawer extends StatelessWidget {
  createAlertDialoge(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Are You Sure?'),
              actions: [
                FlatButton(
                  child: Text(
                    'No',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text(
                    'Yes',
                    style: TextStyle(color: Colors.indigo),
                  ),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Sushant Maharjan'),
            accountEmail: Text('sushantmzjn@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://instagram.fktm7-1.fna.fbcdn.net/v/t51.2885-19/s150x150/74917699_2463494367262489_3021098863797731328_n.jpg?tp=1&_nc_ht=instagram.fktm7-1.fna.fbcdn.net&_nc_ohc=7JimE1hH8xkAX8n1hRh&oh=979690a34a8f99d37c2213802f8ff477&oe=6076A656',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/1261728/pexels-photo-1261728.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          ListTile(
            leading: Icon(Icons.file_present),
            title: Text('My Project'),
            onTap: () {
              print(null);
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.indigo,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text('Skills'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Skills()));
              }),
          ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('About'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => About()));
              }),
          Divider(
            color: Colors.indigo,
            indent: 10,
            endIndent: 10,
            thickness: 1.5,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Exit'),
            onTap: () {
              createAlertDialoge(context);
            },
          ),
        ],
      ),
    );
  }
}

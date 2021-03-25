import 'package:flutter/material.dart';
import 'package:myPortfolio/drawer.dart';
import 'package:myPortfolio/model/contactmodel.dart';
import 'package:myPortfolio/repos/contact_repos.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo[300]),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Contact',
            ),
          ),
          drawer: SideDrawer(),
          body: FutureBuilder<List<Contact>>(
            future: ContactsRepository().getContacts(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                print(snapshot.error.toString());
              } else if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) => Container(
                    child: Column(
                      children: [
                        Text(snapshot.data[index].address),
                        Text(snapshot.data[index].contact),
                        Text(snapshot.data[index].email),
                        Text(snapshot.data[index].site),
                      ],
                    ),
                  ),
                );
              }
              return Center(child: Text('No Data'));
            },
          )),
    );
  }
}

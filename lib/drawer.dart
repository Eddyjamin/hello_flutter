import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0), // Removes the gray top
        children: <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text("Ben Edivri"),
              accountEmail: Text("eddyjamin@gmail.com"),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1520697227012-1a7f0fd6c5c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"))),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ben Edivri"),
            subtitle: Text("Developer"),
            trailing: Icon(Icons.edit),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text("Bookmark"),
            subtitle: Text("Saved posts"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("Email"),
            subtitle: Text("eddyjamin@gmail.com"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.people_outline),
            title: Text("My Contact"),
            subtitle: Text("Engineers/Designers"),
            trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

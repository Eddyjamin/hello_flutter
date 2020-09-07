import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: Homepage(),
    theme: ThemeData(primarySwatch: Colors.teal),
  ));
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var MyText = "Change Caption";
  TextEditingController _nameController = TextEditingController();
  @override // Overriden the "build" method.
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(title: Text("Hello Flutter")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: <Widget>[
                  Image.asset("assets/bg.jpg"),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    MyText,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter some text",
                        labelText: "Caption",
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.send),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
//SizBox() is used for spacing

// Card | AssetImages | TextField | ScrollView

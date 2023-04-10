import 'package:flutter/material.dart';

var myDefaultBackground = Colors.grey[300];

var myAppBar = AppBar(backgroundColor: Colors.grey[900]);

var myDrawer = Drawer(
  backgroundColor: Colors.grey[300],
  child: Column(children: const [
    DrawerHeader(child: Icon(Icons.favorite)),
    ListTile(
      leading: Icon(Icons.home),
      title: Text("DASHBOARD"),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text("MESSAGE"),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text("SETTINGS"),
    ),
    ListTile(
      leading: Icon(Icons.logout),
      title: Text("LOGOUT"),
    ),
  ]),
);

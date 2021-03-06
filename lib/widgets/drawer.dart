// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = 
    "https://feeds.abplive.com/onecms/images/uploaded-images/2021/07/09/776bd59d97589ac15163b9444919e31a_original.jpg?impolicy=abp_images&imwidth=720";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Suvendu"),
                accountEmail: Text("user@abc.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:  NetworkImage(imageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white
              ),
              title: Text("Home",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white
              ),
              title: Text("Profile",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white
              ),
              title: Text("Mail",
              textScaleFactor: 1.2,
              style: TextStyle(
                color: Colors.white
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

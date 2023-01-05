import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://media.licdn.com/dms/image/C5603AQEGyKj2e8046w/profile-displayphoto-shrink_200_200/0/1633094904991?e=2147483647&v=beta&t=jsU43D_EagbgmfPk1v6rFHE5iXvldWf7XzjfDHXXqBo";
    return Drawer(
        child: Container(
      decoration: BoxDecoration(color: Colors.black12),
      child: ListView(
        children: [
          DrawerHeader(
              child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.black12),
            accountEmail: Text("jharshit436@gmail.com",
                style: TextStyle(color: Colors.black)),
            accountName: Text("Harshit", style: TextStyle(color: Colors.black)),
            // currentAccountPicture: Image.network(ImageUrl), for square image
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(ImageUrl),
            ),
          )),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.black),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail_solid,
              color: Colors.blueAccent,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    ));
  }
}

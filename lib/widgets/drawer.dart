import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://media.licdn.com/dms/image/D4D03AQFpt00iYVyUEA/profile-displayphoto-shrink_800_800/0/1670232676164?e=2147483647&v=beta&t=AkrtYAjQ1wbhiu0wXuS8dkOyyBlARQmOKjBIOLS-ovg";
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
              radius: 40,
            ),
          )),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, MyRoutes.loginroute);
            },
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

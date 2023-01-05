import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            child: Text(
              "Catlog App",
              // style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: Center(child: Text("Hello , Harshit")),
        drawer: Drawer(
          child: MyDrawer(),
        ));
  }
}

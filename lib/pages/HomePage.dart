import 'dart:convert';

import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/model.dart';
import 'package:flutter_application_1/pages/item_widget.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  void initState() {
    initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("Assets/files/catlog.json");
    var decodeData = jsonDecode(catalogJson);
    print(decodeData);
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final list = List.generate(100, (index) => CatalogModel.items[0]);
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Container(
            child: const Text(
              "Catlog App",
              // style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: list[index],
              );
            }),
        // ListView(
        //   children: <Widget>[
        //     Container(
        //         height: 500,
        //         color: Colors.amber[500],
        //         child: const Center(
        //           child: const Text('1'),
        //         )),
        //     Container(
        //         height: 500,
        //         color: Color.fromARGB(255, 53, 82, 177),
        //         child: const Center(
        //           child: const Text('2'),
        //         )),
        //     Container(
        //         height: 500,
        //         color: Color.fromARGB(255, 53, 177, 119),
        //         child: const Center(
        //           child: const Text('3'),
        //         ))
        //   ],
        // ),
        drawer: const Drawer(
          child: MyDrawer(),
        ));
  }
}

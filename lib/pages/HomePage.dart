// ignore: file_names
import 'dart:convert';

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
}

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("Assets/files/catlog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
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
            itemCount: CatalogModel.items.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: CatalogModel.items[index],
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

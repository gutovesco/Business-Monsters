import 'package:flutter/material.dart';
import 'package:test_project/tabs/first-tab.dart' as first;
import 'package:test_project/tabs/second-tab.dart' as second;

void main() {
  runApp(new MaterialApp(
    home: new MyTabs()
  ));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {


  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Pages"), 
        backgroundColor: Color.fromRGBO(78, 165, 4, 100),
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(text: ('Informações Pessoais'),),
            new Tab(text: ('Informações do Negócio'),),
          ]
        )
      ),
     body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.First(),
          new second.Second(),
        ]
      )
    );
  }
}
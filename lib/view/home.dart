import 'package:day1/view/widgets/navigationDrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('day 1'),
      ),
      drawer: NavigationDrawer(),
      body: Column(
        children: [
          Text('hello word'),
        ],
      ),
    );
  }
}



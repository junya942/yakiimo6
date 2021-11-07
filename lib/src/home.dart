import 'package:flutter/material.dart';
import 'package:team6/src/sub.dart';

import 'aba.dart';
import 'home2.dart';

class TabsExample extends StatefulWidget {
  const TabsExample({Key? key}) : super(key: key);

  @override
  _TabsExampleState createState() => _TabsExampleState();
}

class _TabsExampleState extends State<TabsExample> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var routes = [
      Stack(children: [Home2()]),
      Stack(children: [Sub()]),
      Stack(children: [Aba()]),
    ];
    // final _kTabPages = <Widget>[
    //   const Center(child: Icon(Icons.cloud, size: 64.0, color: Colors.teal)),
    //   const Center(child: Icon(Icons.alarm, size: 64.0, color: Colors.cyan)),
    //   const Center(child: Icon(Icons.forum, size: 64.0, color: Colors.blue)),
    // ];
    // final _kTabs = <Tab>[
    //   const Tab(icon: Icon(Icons.cloud), text: 'Tab1'),
    //   const Tab(icon: Icon(Icons.alarm), text: 'Tab2'),
    //   const Tab(icon: Icon(Icons.forum), text: 'Tab3'),
    // ];
    return
        // length: _kTabs.length,
        Scaffold(
      body: routes[_selectedIndex],
      appBar: AppBar(
        title: const Text('Study&Quiz'),
        backgroundColor: Colors.green.withOpacity(0.7),
        // bottom: TabBar(
        //   // tabs: _kTabs,
        // ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green[300],
        selectedLabelStyle: TextStyle(color: Colors.white),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              color: Colors.white,
              size: 40,
            ),
            label: 'Menu',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Colors.white,
              size: 40,
            ),
            label: 'Quizller',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
            label: 'Avatar',
          ),
        ],
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }
}

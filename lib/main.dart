import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Пять страниц с контентом',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ContentSwitcher(),
    );
  }
}

class ContentSwitcher extends StatefulWidget {
  @override
  _ContentSwitcherState createState() => _ContentSwitcherState();
}

class _ContentSwitcherState extends State {
  int _currentIndex = 0;

  void _changeContent(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List contentList = [
      Container(
        color: Colors.pink,
        child: Center(child: Text('Уведомления', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      ),
      Container(
        color: Colors.blue,
        child: Center(child: Text('Поиск', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      ),
      Container(
        color: Colors.green,
        child: Center(child: Text('Избранное', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      ),
      Container(
        color: Colors.purple,
        child: Center(child: Text('Уведомления', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))),
      ),
      Container(
        color: Colors.orange,
        child: Center(child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg')),
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Пять страниц с контентом', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),) ,
        backgroundColor: Colors.black,
      ),
      body: contentList[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _changeContent,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Дом',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Поиск',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_alert),
            label: 'Уведомления',
              backgroundColor: Colors.black
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Аккаунт',
              backgroundColor: Colors.black
          ),
        ],
        selectedItemColor: Colors.lightBlueAccent,

      ),
    );
  }
}
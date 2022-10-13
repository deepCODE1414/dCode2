import 'package:deep/ChatPage.dart';
import 'package:deep/FeedPage.dart';
import 'package:deep/HomePage.dart';
import 'package:deep/NavBarDrawer.dart';
import 'package:deep/ProfilePage.dart';
import 'package:flutter/material.dart';

class ExampleNavigationBar extends StatefulWidget {
  const ExampleNavigationBar({Key? key}) : super(key: key);

  @override
  State<ExampleNavigationBar> createState() => _ExampleNavigationBarState();
}

class _ExampleNavigationBarState extends State<ExampleNavigationBar> {
  int currentIndex = 0;
  final screens = [
    // Center(
    //   child: Text(
    //     'Home',
    //     style: TextStyle(fontSize: 60, color: Colors.black),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Feed',
    //     style: TextStyle(fontSize: 60, color: Colors.black),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Chat',
    //     style: TextStyle(fontSize: 60, color: Colors.black),
    //   ),
    // ),
    // Center(
    //   child: Text(
    //     'Profile',
    //     style: TextStyle(fontSize: 60, color: Colors.black),
    //   ),
    // )
    HomePage(),
    FeedPage(),
    ChatPage(),
    ProfilePage(),
  ];

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
        title: Text('Bottom Navigation bar'),
        centerTitle: true,
      ),
      drawer: NavBar(),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.purpleAccent,
        currentIndex: currentIndex,
        iconSize: 25,
        selectedFontSize: 18,
        unselectedFontSize: 15,
        onTap: (index) => setState(() => currentIndex = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Feed',
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
              backgroundColor: Colors.purpleAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.purpleAccent),
        ],
      ),
    );
  }
}

import 'package:deep/FeedPage.dart';
import 'package:deep/HomePage.dart';
import 'package:deep/NavBarDrawer.dart';
import 'package:deep/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:deep/navigation_bar.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    FeedPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 200,
          color: Colors.blue,
        ),
      ),
      drawer: NavBar(),
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

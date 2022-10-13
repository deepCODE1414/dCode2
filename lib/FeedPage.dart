import 'package:deep/ChatPage.dart';
import 'package:deep/HomePage.dart';
import 'package:deep/NavBarDrawer.dart';
import 'package:deep/ProfilePage.dart';
import 'package:deep/navigation_bar.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
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
      appBar: AppBar(
        title: Text('Feed'),
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.redAccent,
          ),
        ),
      ),
      drawer: NavBar(),
      bottomNavigationBar: ExampleNavigationBar(),
      // BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   selectedItemColor: Colors.white,
      //   unselectedItemColor: Colors.white70,
      //   backgroundColor: Colors.purpleAccent,
      //   currentIndex: currentIndex,
      //   iconSize: 25,
      //   selectedFontSize: 18,
      //   unselectedFontSize: 15,
      //   onTap: (index) => setState(() => currentIndex = index),
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home),
      //         label: 'Home',
      //         backgroundColor: Colors.purpleAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite),
      //         label: 'Feed',
      //         backgroundColor: Colors.purpleAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.chat),
      //         label: 'Chat',
      //         backgroundColor: Colors.purpleAccent),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person),
      //         label: 'Profile',
      //         backgroundColor: Colors.purpleAccent),
      //   ],
      // ),
    );
  }
}

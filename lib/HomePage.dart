import 'package:deep/ChatPage.dart';
import 'package:deep/FeedPage.dart';
import 'package:deep/NavBarDrawer.dart';
import 'package:deep/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:deep/navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  final screens = [
    HomePage(),
    // FeedPage(),
    // ChatPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Center(
          child: Container(
            height: 400,
            width: 200,
            color: Colors.green,
          ),
        ),
        drawer: NavBar(),
        bottomNavigationBar: ExampleNavigationBar()
        // bottomNavigationBar: ExampleNavigationBar(),
        );
  }
}

import 'package:deep/ChatPage.dart';
import 'package:deep/FeedPage.dart';
import 'package:deep/HomePage.dart';
import 'package:deep/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:deep/navigation_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1528465424850-54d22f092f9d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y292ZXIlMjBwaG90b3xlbnwwfHwwfHw%3D&w=1000&q=80',
                    ),
                    fit: BoxFit.cover),
                // borderRadius: BorderRadius.circular(12),
                color: Colors.purpleAccent,
              ),
              accountName: Text(
                'Deep',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text(
                'deep1234@gmail.com',
                style: TextStyle(fontWeight: FontWeight.w400),
              ),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.network(
                    'https://images.unsplash.com/photo-1457449940276-e8deed18bfff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80',
                    width: 120,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Divider(
            height: 10,
            color: Colors.grey,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomePage();
              }));
            },
            leading: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return FeedPage();
              }));
            },
            leading: Icon(
              Icons.favorite,
              color: Colors.grey,
            ),
            title: Text(
              'Feed',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ChatPage();
              }));
            },
            leading: Icon(
              Icons.chat,
              color: Colors.grey,
            ),
            title: Text(
              'Chat',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProfilePage();
              }));
            },
            leading: Icon(
              Icons.person,
              color: Colors.grey,
            ),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}

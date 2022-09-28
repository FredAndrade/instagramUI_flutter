import 'package:flutter/material.dart';
import 'package:instagram_ui/pages/feed.dart';
import 'package:instagram_ui/pages/notification.dart';
import 'package:instagram_ui/pages/profile.dart';
import 'package:instagram_ui/pages/reels.dart';
import 'package:instagram_ui/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    FeedPage(),
    SearchPage(),
    ReelsPage(),
    NotificationPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavBar,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.slideshow_outlined),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
        ],
      ),
    );
  }
}

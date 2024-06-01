import 'package:alkye_assignment/screen/favourite_screen.dart';
import 'package:alkye_assignment/screen/live_screen.dart';
import 'package:alkye_assignment/screen/main_screen.dart';
import 'package:alkye_assignment/screen/notification_screen.dart';
import 'package:alkye_assignment/screen/profile_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const MainScreen(),
    const FavouriteScreen(),
    const LiveScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                spreadRadius: 5.0,
              ),
            ],
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.transparent,
            elevation: 0,
            items: <BottomNavigationBarItem>[
              _buildBottomNavigationBarItem(Icons.book, 0),
              _buildBottomNavigationBarItem(Icons.bookmark, 1),
              _buildBottomNavigationBarItem(Icons.tv, 2),
              _buildBottomNavigationBarItem(Icons.notifications, 3),
              _buildBottomNavigationBarItem(Icons.person, 4),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.black54,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, int index) {
    return BottomNavigationBarItem(
      icon: _selectedIndex == index
          ? Container(
              decoration: const BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            )
          : Icon(icon),
      label: '',
    );
  }
}

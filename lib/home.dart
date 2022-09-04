import 'package:e_commerce/components/bottom_navigation_bar_custom.dart';
import 'package:e_commerce/pages/chat/body_chat.dart';
import 'package:e_commerce/pages/favorite/body_favorite.dart';
import 'package:e_commerce/pages/home/body.dart';
import 'package:e_commerce/pages/profile/body_profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  List pages = [
    const BodyHomePage(),
    const BodyFavorite(),
    const BodyChat(),
    const BodyProfile(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBarCustom(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

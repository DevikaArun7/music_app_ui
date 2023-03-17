import 'package:flutter/material.dart';
import 'package:music_app_ui/screens/search.dart';

import 'favourite.dart';
import 'homescreen.dart';
import 'library.dart';

class ScreenBottum extends StatefulWidget {
  const ScreenBottum({super.key});

  @override
  State<ScreenBottum> createState() => _ScreenBottumState();
}

class _ScreenBottumState extends State<ScreenBottum> {
  final _pages = [
    HomeScreen(),
    const SearchScreen(),
    const Library(),
    const Favourite(),
  ];

  int currentSelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[currentSelectedIndex],
      backgroundColor: const Color.fromARGB(255, 13, 65, 108),
      bottomNavigationBar: BottomNavigationBar(
         
          showUnselectedLabels: true,
          currentIndex: currentSelectedIndex,
          onTap: (value) {
            setState(() {
              currentSelectedIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.library_add),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              backgroundColor: Colors.blue,
              icon: Icon(Icons.favorite),
              label: 'Favourite',
            ),
          ]),
    );
  }
}

import 'package:blackstone/Pages/Search.dart';
import 'package:blackstone/Pages/Map.dart';
import 'package:blackstone/Pages/Profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:blackstone/elements/variables.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../Pages/Containers.dart';
import '../Pages/Home.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          Home(),
          Containers(),
          Search(showData: true,),
          Maps(),
          Profile(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? Icon(Icons.home)
                : Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? Icon(Icons.fire_truck)
                : Icon(Icons.fire_truck_outlined),
            label: 'Search',
          ), BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? Icon(Icons.check_box_outline_blank_outlined)
                : Icon(Icons.check_box),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? Icon(Icons.map)
                : Icon(Icons.map_outlined),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 4
                ? Icon(Icons.person)
                : Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
        selectedItemColor: black,
        unselectedItemColor: black2,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        iconSize: 20,
        showSelectedLabels: false,
      ),

    );
  }
}

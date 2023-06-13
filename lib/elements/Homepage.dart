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

import '../Pages/Home.dart';



class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);



  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  int _selectedIndex = 0;
  PageController pageController = PageController();
  void _onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.jumpToPage(index);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(


      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Map'
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
        ),
      ],
        selectedItemColor: black,
        unselectedItemColor: black2,
        currentIndex: _selectedIndex,
        onTap: _onTapped,
        // showSelectedLabels: false,
        iconSize: 20,
        showSelectedLabels: false,
        
      ),

      body: PageView(

        controller: pageController,
        children: [
          Home(),
          Search(),
          Map(),
          Profile(),
          ],
      ),



    );
  }
}

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


      bottomNavigationBar: BottomNavigationBar(items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: _selectedIndex == 0?Icon(Icons.home):Icon(Icons.home_outlined),
            label: 'Home',
        ),
        BottomNavigationBarItem(
            icon:  _selectedIndex == 0?Icon(Icons.fire_truck_outlined):Icon(Icons.fire_truck),
            label: 'Search'
        ),
        BottomNavigationBarItem(
            icon:  _selectedIndex == 0?Icon(Icons.map_outlined):Icon(Icons.map),
            label: 'Map'
        ),
        BottomNavigationBarItem(
            icon: _selectedIndex == 0?Icon(Icons.person_outline):Icon(Icons.person),
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

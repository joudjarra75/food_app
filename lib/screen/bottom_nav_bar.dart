import 'package:flutter/material.dart';
import 'package:food_app/screen/fav_screen.dart';
import 'package:food_app/screen/home_screen.dart';
import 'package:food_app/screen/profile_screen.dart';

import '../model/food_model.dart';

class BottomNavBar extends StatefulWidget {
   BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
Map<String,Widget> item = {
    'Home' : Icon(Icons.home),
    'Favorite' : Icon(Icons.favorite),
    'Profile' : Icon(Icons.person)
  };
  List <Widget> screens = [
    HomeScreen(),
    // Center(child: Text("Fav"),),
   FavScreen(),
    ProfileScreen()
  ];

int selectedIndex = 0;

void onTapFun(int index){
  setState(() {
    selectedIndex = index;
  });
}

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      // backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text("Food App"),
        centerTitle: true,
      ),
      body:screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:item.entries.map((i) => BottomNavigationBarItem(icon:i.value,label: i.key)).toList(),
        currentIndex:selectedIndex ,
        onTap: onTapFun,
        selectedItemColor: Colors.deepOrange,
      ),
      drawer: Drawer(),
    );
  }
}

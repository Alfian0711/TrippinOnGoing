import 'package:flutter/material.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(249, 251, 245, 1),
          elevation: 0,
          iconSize: 33,
          showSelectedLabels: false,
          showUnselectedLabels: false,

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled, color: Colors.black,),
            label:'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_rounded, color: Colors.black,),
            label: 'Pin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_alt_rounded, color: Colors.black,),
            label: 'Category',
          ),
        ],
      ),
    );
  }
}
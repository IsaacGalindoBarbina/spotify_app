import 'package:flutter/material.dart';
import 'package:spotify_app/kernel/widgets/navigation/bottom_navigation_tab.dart';
import 'package:spotify_app/modules/home/adapters/screens/home.dart';
import 'package:spotify_app/modules/libraries/adapters/screens/libraries.dart';
import 'package:spotify_app/modules/search/adapters/screens/search.dart';

class Menu extends StatefulWidget{
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int _selectedIndex =0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: const [Home(), Searchs(), Libraries()],
      ),
      bottomNavigationBar: BottomNavigationTab(selectedIndex: _selectedIndex, onItemTapped:_onItemTapped ,),
    );
  }
}

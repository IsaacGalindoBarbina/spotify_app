// import 'package:flutter/material.dart';
// import 'package:spotify_app/kernel/theme/colors_app.dart';

// class BottomNavigationTab extends StatelessWidget{
//   final int selectedIndex;
//   final Function(int) onItemTapped;
//   const BottomNavigationTab({super.key, required this.selectedIndex, required this.onItemTapped});



//   @override
//   Widget build(BuildContext context) {
//     return BottomNavigationBar(items: const <BottomNavigationBarItem>[
//       BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Inicio'),
//       BottomNavigationBarItem(icon: Icon(Icons.search_off_outlined), label: 'Buscar'),
//       BottomNavigationBarItem(icon: Icon(Icons.library_books_outlined), label: 'Tu biblioteca')
//     ],
//     currentIndex: selectedIndex, //contiene el indice en el cual se tiene en la lista
//     selectedItemColor: ColorsApp.successColor, 
//     unselectedItemColor: ColorsApp.primaryColor, //pone color a los iconos que no estan seleccionando
//     onTap: onItemTapped, //se ejecuta cada que el usuario da clic 
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:spotify_app/kernel/theme/colors_app.dart';

class BottomNavigationTab extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavigationTab({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Inicio'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.book_online_outlined), label: 'Tu biblioteca'),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: ColorsApp.successColor,
      unselectedItemColor: ColorsApp.primaryColor,
      onTap: onItemTapped,
      type: BottomNavigationBarType.fixed, // Use fixed type for more than 3 items
      showUnselectedLabels: true, // Show labels for unselected items
    );
  }
}


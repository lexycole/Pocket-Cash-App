// import 'package:flutter/material.dart';
// import 'package:pocket_cash/screens/home_screen/index.dart';
// import 'package:pocket_cash/screens/more_screen/index.dart';
// import 'package:pocket_cash/screens/task_screen/index.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({ Key? key }) : super(key: key);

//   @override
//   State<MainScreen> createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   int _selectedIndex = 0;
// static const List<Widget> _widgetOptions = <Widget>[
//   HomeScreen(),
//   TaskScreen(),
//   MoreScreen(),
// ];

// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }

//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//       body: Center(
//       child: _widgetOptions.elementAt(_selectedIndex),
//     ),
//     bottomNavigationBar: BottomNavigationBar(
//       items: const <BottomNavigationBarItem>[
//         BottomNavigationBarItem(
//           icon: Icon(Icons.home),
//           label: 'Home',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.splitscreen),
//           label: 'Task',
//         ),
//         BottomNavigationBarItem(
//           icon: Icon(Icons.menu),
//           label: 'More',
//         ),
//       ],
//       currentIndex: _selectedIndex,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.white70,
//       onTap: _onItemTapped,
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: const Color.fromARGB(255, 135, 42, 236),
//       iconSize: 30,
//       selectedFontSize: 15,
//       unselectedFontSize: 10,
//       ),
//     );
//   }
// }
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking_app/screens/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static final List _widgetoptions = [
   HomeScreen(),
    const Text('search'),
    const Text('Tickets'),
    const Text('Profile')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My tickets'),
      ),
      body: Center(
        child: _widgetoptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          onTap: onItemTapped,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          elevation: 10,
          selectedItemColor: Colors.blueGrey,
          unselectedItemColor: Color(0xFF526480),
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
                icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
                label: 'Ticket'),
            BottomNavigationBarItem(
                icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
                activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
                label: 'Profile')
          ]),
    );
  }
}

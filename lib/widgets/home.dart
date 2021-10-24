import 'package:flutter/material.dart';
import 'package:lofo_app/widgets/profile/profile_page.dart';

import 'home/home_page.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  static const textStyle = TextStyle(color: Colors.grey);
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
// <<<<<<< HEAD:lib/home.dart
    Text('Index 1: Home',),
    Text('Index 2: Add',),
    Text('Index 3: Profile',),
// =======
    HomePageWidget(),
    Text('Index 2: Add',),
    ProfilePageWidget(),
// >>>>>>> ad47591b1feb5ed02b73600bcfd9158568a67e1c:lib/widgets/home.dart
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoFo SDU'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent.withOpacity(0.1),
        foregroundColor: Colors.black,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        unselectedLabelStyle: textStyle,
        onTap: _onItemTapped,
      ),
    );
  }
}




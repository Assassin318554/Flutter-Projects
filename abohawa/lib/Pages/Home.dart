import 'dart:convert';
import 'dart:html';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:abohawa/Pages/Worker/Worker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void startApp() async {
    Worker worker = Worker(location: 'Dhaka');
    await worker.getData();
    print(worker.location);
    print(worker.temp);
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    startApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.4, 0.8, 0.99],
            colors: [
              Color.fromARGB(255, 9, 19, 72),
              Color.fromARGB(255, 47, 20, 94),
              Color.fromARGB(255, 92, 46, 172),
              Color.fromARGB(255, 183, 45, 208),
            ],
          ),
        ),
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Home Page!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Headland One',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 183, 45, 208),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 48, 8, 116),
            ),
            label: 'Home',
            backgroundColor: Color.fromARGB(255, 48, 8, 116),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.location_on,
              color: Color.fromARGB(255, 48, 8, 116),
            ),
            label: 'Location',
            backgroundColor: Color.fromARGB(255, 48, 8, 116),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color.fromARGB(255, 48, 8, 116),
            ),
            label: 'Settings',
            backgroundColor: Color.fromARGB(255, 48, 8, 116),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        mouseCursor: MaterialStateMouseCursor.clickable,
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
          size: 30,
        ), // Color for unselected items
        selectedLabelStyle: const TextStyle(
          fontSize: 15,
          fontFamily: 'Headland One',
          fontWeight: FontWeight.bold,
        ),

        onTap: _onItemTapped,
      ),
    );
  }
}

import 'package:app/Screens/information.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Settings Page")),
      body: Container(
        padding: EdgeInsets.all(100),
        margin: EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color.fromARGB(0, 84, 84, 231),
        ),
        child: const Center(
          child: Text("Welcome to Settings Page!"),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
        ],
        backgroundColor: Colors.blue,
        onTap: (int index) {
          if (index == 0) {
            // Navigate to Home Page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InformationPage()),
            );
          } else if (index == 1) {
            // Navigate to Settings Page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          } else if (index == 2) {
            // Navigate to Info Page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const InformationPage()),
            );
          }
        },
      ),
    );
  }
}

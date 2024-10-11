import 'package:app/Screens/infoPage.dart';
import 'package:app/Screens/information.dart';
import 'package:app/Screens/settings.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                color: Colors.white, // Background color of the container
                borderRadius: BorderRadius.circular(15), // Border radius
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26, // Shadow color
                    blurRadius: 10, // Shadow blur
                    offset: Offset(0, 4), // Shadow position
                  ),
                ],
              ),
              clipBehavior:
                  Clip.antiAlias, // Ensures the child respects border radius
              child: Column(
                children: [
                  // Image.network inside the Container
                  Image.network(
                    'https://wieck-nissanao-production.s3.amazonaws.com/photos/0f1f7c57cbc0c093ecd008d5c8f973bd2c9c8bb5/preview-928x522.jpg',
                    fit: BoxFit.cover, // Adjusts image to cover the container
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListTile(
                      title: const Text("2020 Nissan GT-R NISMO "),
                      subtitle: const Text("More info..."),
                      trailing: const Icon(Icons.chevron_right),
                      onTap: () {
                        // Navigate to the information page
                        Navigator.push(
                          context,
                          // building the new screen for new screen to be built
                          MaterialPageRoute(
                              builder: (context) => const InfoPage()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
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




  




// Base widget - 
// images, cards, icons, button, widget, styling
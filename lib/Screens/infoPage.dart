import 'package:app/Screens/information.dart';
import 'package:app/Screens/settings.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Information Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '2020 Nissan GT-R NISMO strengthens grip on speed.',
                  style: TextStyle(fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  'NEW YORK – The 2020 Nissan GT-R NISMO made its world debut today, with race car-inspired upgrades and tuning improvements that maximize its exhilarating performance The model was showcased alongside the new 50th Anniversary Edition as Nissan celebrated 50 years of GT-R heritage at the New York International Auto Show made its world debut today, with race car-inspired upgrades and tuning improvements that maximize its exhilarating performance The model was showcased alongside the new 50th Anniversary Edition as Nissan celebrated 50 years of GT-R heritage at the New York International Auto Show made its world debut today, with race car-inspired upgrades and tuning improvements that maximize its exhilarating performance The model was showcased alongside the new 50th Anniversary Edition as Nissan celebrated 50 years of GT-R heritage at the New York International Auto Show ',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                // Table for spacifications
                Table(border: TableBorder.all(), columnWidths: const {
                  0: FixedColumnWidth(150), // Width for the first column
                  1: FixedColumnWidth(200), // Width for the second column
                }, children: const [
                  TableRow(children: [
                    Text('Engine',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('VR38DETT, V6 twin-turbo charged DOHC'),
                  ]),
                  TableRow(children: [
                    Text('Displacement',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('3.8L'),
                  ]),
                  TableRow(children: [
                    Text('Horsepower',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('600 hp'),
                  ]),
                  TableRow(children: [
                    Text('Torque',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('481 lb-ft / 3600-5600 rpm'),
                  ]),
                  TableRow(children: [
                    Text('Overall Length',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('184.6 in. / 4690 mm'),
                  ]),
                  TableRow(children: [
                    Text('Overall Width',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('74.6 in. / 1895 mm'),
                  ]),
                  TableRow(children: [
                    Text('Overall Height',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('53.9 in. / 1370 mm'),
                  ]),
                  TableRow(children: [
                    Text('Wheelbase',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('109.4 in. / 2780 mm'),
                  ]),
                ]),
                SizedBox(height: 20),
              ],
            ),
          ),
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

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedIndex = 0;

  List<Widget> widgetArray = [
    const Text("Hi, This is Home Widget"),
    const Text("Hi, This is Setting Widget"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Tab Bar Navigation'),
        ),
        body: Center(
          child: widgetArray[selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          currentIndex: selectedIndex,
          selectedItemColor: Colors.amber[800],
          backgroundColor: Colors.purpleAccent,
        ),
      ),
    );
  }
}

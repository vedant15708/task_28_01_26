import 'package:flutter/material.dart';

class BottomNavigationDemo extends StatefulWidget {
  const BottomNavigationDemo({super.key});

  @override
  State<BottomNavigationDemo> createState() => _BottomNavigationDemoState();
}

class _BottomNavigationDemoState extends State<BottomNavigationDemo> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    Center(child: Text("screen1")),
    Center(child: Text("screen2")),
    Center(child: Text("screen3")),
    Center(child: Text("screen4")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text("FAB Clicked")));
        },
        child: const Icon(Icons.add, size: 30, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(0),
            ),
            IconButton(
              icon: const Icon(Icons.call_made),
              color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(1),
            ),
            const SizedBox(width: 40),
            IconButton(
              icon: const Icon(Icons.call_received),
              color: _selectedIndex == 2 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(2),
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              onPressed: () => _onItemTapped(3),
            ),
          ],
        ),
      ),
    );
  }
}

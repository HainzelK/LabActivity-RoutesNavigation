import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/',
                  (route) => false,
                );
              },
              child: Text('Go Back to First Screen'),
            ),
            SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/second',
                  (route) => false,
                );              },
              child: Text("To Second Screen"),
            ),
          ],
        ),
      ),
        bottomNavigationBar: NavigationBar(
        selectedIndex: 2,
        onDestinationSelected: (int index) {
          final routes = ['/', '/second', '/third'];
          Navigator.pushNamedAndRemoveUntil(context, routes[index], (route) => false);
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'First'),
          NavigationDestination(icon: Icon(Icons.navigate_next), label: 'Second'),
          NavigationDestination(icon: Icon(Icons.last_page), label: 'Third'),
        ],
      ),

    );
  }
}

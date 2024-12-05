import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
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
                  '/third',
                  (route) => false,
                );              },
              child: Text("To Third Screen"),
            ),
          ],
        ),
      ),
        bottomNavigationBar: NavigationBar(
        selectedIndex: 1,
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

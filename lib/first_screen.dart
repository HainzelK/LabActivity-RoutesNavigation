import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/second', (route) => false,);
              },
              child: const Text('To Second Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/third', (route) => false,);
              },
              child: const Text('To Third Screen'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: 0,
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

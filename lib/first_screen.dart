import 'package:flutter/material.dart';


class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Navigation',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Go to Second Screen'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/second',
                  (route) => false,
                );
              },
            ),
            ListTile(
              title: const Text('Go to Third Screen'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/third',
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/second',
                  (route) => false,
                );
              },
              child: Text("To Second Screen"),
            ),
            SizedBox(height: 20), // Add some space between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/third',
                  (route) => false,
                );
              },
              child: Text("To Third Screen"),
            ),
          ],
        ),
      ),    );
  }
}

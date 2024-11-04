import 'package:flutter/material.dart';

// Import the other pages
import 'sesi4_page.dart';
import 'sesi5_page.dart';
import 'sesi6_page.dart';
import 'sesi7_page.dart'; // Import Sesi7Page

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Navigation to Sesi4
  void _navigateToSesi4() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sesi4Page()),
    );
  }

  // Navigation to Sesi5
  void _navigateToSesi5() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sesi5Page()),
    );
  }

  // Navigation to Sesi6
  void _navigateToSesi6() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Sesi6Page()),
    );
  }

  // Navigation to Sesi7
  void _navigateToSesi7() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const Sesi7Page()), // Changed to Sesi7Page
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20), // Space between text and button

            // Button to navigate to Sesi5
            ElevatedButton(
              onPressed: _navigateToSesi5,
              child: const Text('Go to Sesi5'),
            ),
            const SizedBox(height: 20), // Space between buttons

            // Button to navigate to Sesi4
            ElevatedButton(
              onPressed: _navigateToSesi4,
              child: const Text('Go to Sesi4'),
            ),
            const SizedBox(height: 20), // Space between buttons

            // Button to navigate to Sesi6
            ElevatedButton(
              onPressed: _navigateToSesi6,
              child: const Text('Go to Sesi6'),
            ),
            const SizedBox(height: 20), // Space between buttons

            // Button to navigate to Sesi7
            ElevatedButton(
              onPressed: _navigateToSesi7,
              child: const Text('Go to Sesi7'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

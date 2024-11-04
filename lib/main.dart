import 'package:flutter/material.dart';
import 'pages/sesi4_page.dart';
import 'pages/sesi5_page.dart';
import 'pages/sesi6_page.dart';
import 'pages/sesi7_page.dart'; // Import Sesi7Page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

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
      MaterialPageRoute(builder: (context) => const Sesi7Page()), // Correct navigation
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
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: _navigateToSesi4,
              child: const Text('Go to Sesi4'),
            ),
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: _navigateToSesi5,
              child: const Text('Go to Sesi5'),
            ),
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: _navigateToSesi6,
              child: const Text('Go to Sesi6'),
            ),
            const SizedBox(height: 20), // Space between buttons
            ElevatedButton(
              onPressed: _navigateToSesi7, // Corrected to _navigateToSesi7
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

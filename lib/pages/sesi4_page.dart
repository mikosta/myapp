import 'package:flutter/material.dart';

class Sesi4Page extends StatelessWidget {
  const Sesi4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sesi 4',
          style: TextStyle(

            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center( // Removed const to allow for child widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network( 
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg', // Replace with your image URL
              height: 200, // Adjust the height as needed
            ),
            const SizedBox(height: 20), // Add some spacing
            const Text(
              'bingung ga',
              style: TextStyle(
                fontSize: 24,
                color: Colors.purple,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your button action here
        },
        backgroundColor: Colors.blue, 
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Sesi5Page extends StatelessWidget {
  const Sesi5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novel Bagus'),
        backgroundColor:
            const Color.fromARGB(255, 223, 217, 234), // Change as needed
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0), // Padding around the content
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align text to the start (left)
          children: <Widget>[
            // Book Title
            const Text(
              'Harry Potter',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.left, // Align title to the left
            ),
            const SizedBox(height: 10), // Space between title and author
            // Author and Publication Date
            const Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Space between author and date
              children: [
                Expanded(
                  // Use Expanded to fill space
                  child: Text(
                    'J.K. Rowling',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                    ),
                    textAlign: TextAlign.left, // Align author to the left
                  ),
                ),
                Text(
                  '17 August 1945',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                  textAlign: TextAlign.right, // Align date to the right
                ),
              ],
            ),
            const SizedBox(height: 20), // Space before the image
            // Container for Dobby Image
            Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 10.0), // Margin around the image
              width: double.infinity, // Make the image full width
              child: Image.network(
                'https://imgcdn.stablediffusionweb.com/2024/4/15/94ae5ccc-b789-4754-a9a4-e96be7cd930d.jpg', // Dobby Image URL
                fit: BoxFit.cover, // Cover the entire container
                loadingBuilder: (BuildContext context, Widget child,
                    ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded /
                              (loadingProgress.expectedTotalBytes ?? 1)
                          : null,
                    ),
                  );
                },
                errorBuilder: (BuildContext context, Object error,
                    StackTrace? stackTrace) {
                  return const Text('Failed to load image');
                },
              ),
            ),
            const SizedBox(height: 20), // Space before description
            // Book Description
            const Text(
              'Lorem ipsum dolor sit amet, consectetur '
              'adipiscing elit. Nulla tincidunt purus sit amet '
              'dignissim rutrum. Nunc posuere arcu erat, in '
              'elementum augue vulputate vitae. Donec '
              'sollicitudin lectus felis, at dignissim libero '
              'faucibus eget. Praesent mattis quam ut felis '
              'tristique, et interdum elit vestibulum. Vestibulum '
              'ac velit augue. Nunc tincidunt suscipit sapien '
              'eu egestas. Donec auctor tellus a tellus '
              'efficitur, et cursus odio lacinia. Suspendisse '
              'elementum ex malesuada orci vehicula, eu '
              'sollicitudin dui ullamcorper. Nunc ut '
              'fringilla lectus. Proin pulvinar libero at '
              'orci tristique euismod. Vivamus vitae mi '
              'tincidunt, semper orci vel, posuere eros. '
              'Suspendisse cursus augue sit amet justo '
              'porttitor enim, in vestibulum nunc odio in '
              'libero. Phasellus fringilla vestibulum '
              'lacinia. Mauris porta ac eros at ornare. '
              'Etiam et sem sollicitudin, interdum nisl id, '
              'laoreet libero.',
              style: TextStyle(
                fontSize: 16,
                height: 1.5, // Line height for better readability
              ),
              textAlign: TextAlign.justify, // Justify the description text
            ),
          ],
        ),
      ),
    );
  }
}

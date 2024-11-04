import 'package:flutter/material.dart';

class KyotoPage extends StatelessWidget {
  const KyotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF90EE90),
      appBar: AppBar(
        backgroundColor: Color(0xFF90EE90),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Detail', style: TextStyle(color: Colors.black)),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Color(0xFFFFE4C4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e',
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Container(
                      height: 200,
                      child: Center(child: CircularProgressIndicator()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kyoto',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Text(' 4.9', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        Icon(Icons.location_on, color: Colors.blue, size: 20),
                        Text('Japan'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Kyoto, Japan\'s former capital, is a city of ancient temples, traditional gardens, and preserved tea houses. Known for its cherry blossoms, fall colors, and geisha district of Gion. The city seamlessly blends historic architecture with modern Japanese culture.',
                      style: TextStyle(height: 1.5),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
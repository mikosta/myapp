import 'package:flutter/material.dart';

class BangkokPage extends StatelessWidget {
  const BangkokPage({Key? key}) : super(key: key);

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
                  'https://images.unsplash.com/photo-1699986596772-a4e66da13c9b?q=80&w=1826&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
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
                      'Bangkok',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Text(' 4.7', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        Icon(Icons.location_on, color: Colors.blue, size: 20),
                        Text('Thailand'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Bangkok, Thailand\'s vibrant capital, is a city of contrasts with ornate temples, modern shopping malls, and bustling street markets. Famous for its street food, night life, and cultural landmarks like the Grand Palace and Wat Phra Kaew.',
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
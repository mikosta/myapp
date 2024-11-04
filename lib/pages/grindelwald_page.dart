import 'package:flutter/material.dart';

class GrindelwaldPage extends StatelessWidget {
  const GrindelwaldPage({Key? key}) : super(key: key);

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
                  'https://images.unsplash.com/photo-1531793158084-c80ba1c8e469',
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
                      'Grindelwald',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        Text(' 4.8', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 16),
                        Icon(Icons.location_on, color: Colors.blue, size: 20),
                        Text('Switzerland'),
                      ],
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Grindelwald, nestled in the Swiss Alps, is a picturesque village offering stunning mountain views and world-class skiing. The iconic Eiger North Face towers above, while hiking trails and cable cars provide access to alpine meadows and glaciers.',
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

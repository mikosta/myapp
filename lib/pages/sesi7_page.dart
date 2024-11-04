import 'package:flutter/material.dart';
import 'bali_page.dart';
import 'grindelwald_page.dart';
import 'bangkok_page.dart';
import 'kyoto_page.dart';

class Sesi7Page extends StatefulWidget {
  const Sesi7Page({super.key});

  @override
  State<Sesi7Page> createState() => _Sesi7PageState();
}

class _Sesi7PageState extends State<Sesi7Page> {
  List<bool> isLikedList = [false, false, false, false];

  void _navigateToDetailPage(BuildContext context, String location) {
    Widget destinationPage;
    switch (location.toLowerCase()) {
      case 'grindelwald':
        destinationPage = const GrindelwaldPage();
        break;
      case 'bali':
        destinationPage = const BaliPage();
        break;
      case 'bangkok':
        destinationPage = const BangkokPage();
        break;
      case 'kyoto':
        destinationPage = const KyotoPage();
        break;
      default:
        return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => destinationPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    final List<Map<String, String>> destinations = [
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1593533613122-c2f067f1629e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'location': 'Grindelwald',
        'country': 'Switzerland',
      },
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1573790387438-4da905039392?q=80&w=1925&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'location': 'Bali',
        'country': 'Indonesia',
      },
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1699986596772-a4e66da13c9b?q=80&w=1826&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        'location': 'Bangkok',
        'country': 'Thailand',
      },
      {
        'imageUrl':
            'https://images.unsplash.com/photo-1493976040374-85c8e12f0c0e',
        'location': 'Kyoto',
        'country': 'Japan',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Destinasi Wisata"),
        backgroundColor: Colors.teal,
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: ListView.builder(
          itemCount: destinations.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => _navigateToDetailPage(
                  context, destinations[index]['location']!),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 2,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Column(
                      children: [
                        Image.network(
                          destinations[index]['imageUrl']!,
                          height: size.height / 3.5,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    destinations[index]['location']!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.green,
                                        size: 18,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        destinations[index]['country']!,
                                        style: const TextStyle(
                                            fontSize: 14,
                                            color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 5),
                                  const Text(
                                    "5.0",
                                    style: TextStyle(
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  InkWell(
                                    onTap: () {
                                      setState(() {
                                        isLikedList[index] =
                                            !isLikedList[index];
                                      });
                                    },
                                    child: Icon(
                                      isLikedList[index]
                                          ? Icons.favorite
                                          : Icons.favorite_border,
                                      color: isLikedList[index]
                                          ? Colors.red
                                          : Colors.black,
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

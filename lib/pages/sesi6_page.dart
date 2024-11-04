import 'package:flutter/material.dart';

class Sesi6Page extends StatefulWidget {
  const Sesi6Page({super.key});

  @override
  State<Sesi6Page> createState() => _Sesi6PageState();
}

class _Sesi6PageState extends State<Sesi6Page> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height / 2,
              width: size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Foto Bagus",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
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
                                "5",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(width: 15),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    isLiked = !isLiked;
                                  });
                                },
                                child: Icon(
                                  isLiked ? Icons.favorite : Icons.favorite_border,
                                  color: isLiked ? Colors.red : Colors.black,
                                  size: 20,
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
          ],
        ),
      ),
    );
  }
}

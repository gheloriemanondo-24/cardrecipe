import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 56, 54, 54),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: 390,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 155, 133, 133),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // PART 1 - BG IMAGE & TITLE
                Container(
                  height: 190,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                    image: DecorationImage(
                      image: AssetImage('assets/chicken.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // TITLE
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Filipino Style: Chicken Adobo",
                    style: TextStyle(
                      fontSize: 24,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

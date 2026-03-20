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
                  height: 200,
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
                      fontSize: 28,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 1),

                // PART 2 - ICONS (UPDATED DESIGN)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // LEFT SIDE (Prep + Cook)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.timer,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text("Prep: 15 min"),
                            ],
                          ),

                          const SizedBox(height: 15),

                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(width: 10),
                              const Text("Cook: 45 min"),
                            ],
                          ),
                        ],
                      ),

                      const Spacer(),

                      // RIGHT SIDE (Difficulty)
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.restaurant_menu,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text("Difficulty: Easy"),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),

                // PART 3
                // INGREDIENTS
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 27,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                // HEART ICON
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: DefaultTextStyle(
                          style: const TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 2,
                            color: Colors.black87,
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("• 1 whole chicken"),
                              Text("• Garlic"),
                              Text("• Onion"),
                              Text("• Bay Leaves"),
                              Text("• Cooking Oil"),
                              Text("• 1/2 Cup soy sauce"),
                              Text("• 1/4 Cup vinegar"),
                              Text("• 1 Cup water"),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [BoxShadow(color: Colors.black26)],
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8),
                          child: Icon(Icons.favorite, color: Colors.black),
                        ),
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
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cat and Dog Clicker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int catClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Clicker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'This is Screen 1',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'There is a cat that you can pet!',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Image.network(
                'https://images6.alphacoders.com/337/337780.jpg',
                height: 200,
              ),
              const SizedBox(height: 20),

              Text(
                'Cat Pets: $catClicks',
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    catClicks++;
                  });
                },
                child: const Text('Pet the Cat'),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SecondScreen(),
                    ),
                  );
                },
                child: const Text('Go to Dog Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int dogClicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dog Clicker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'This is Screen 2',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                'There is a dog that you can pet!',
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/1/18/Dog_Breeds.jpg?_=20201016183302',
                height: 200,
              ),

              const SizedBox(height: 20),

              Text(
                'Dog Pets: $dogClicks',
                style: const TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    dogClicks++;
                  });
                },
                child: const Text('Pet the Dog'),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back to Cat Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
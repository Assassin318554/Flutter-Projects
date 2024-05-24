import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/Loading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
        title: const Text(
          'World Time App',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "Headland One",
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('This is Home Page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Loading()),
                );
              },
              child: const Text('Go to Loading Page'),
            ),
          ],
        ),
      ),
    );
  }
}

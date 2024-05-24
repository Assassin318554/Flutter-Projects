import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/ChooseLocation.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
            const Text('This is Loading Page'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChooseLocation(),
                  ),
                );
              },
              child: const Text('Go to Choose Loaction Page'),
            ),
          ],
        ),
      ),
    );
  }
}

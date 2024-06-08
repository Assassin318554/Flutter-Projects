import 'package:flutter/material.dart';
class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text(
          'ABOHAWA',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Headland One',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Text('Location Page!'),
      ),
    );
  }
}
import 'package:flutter/material.dart';

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
        centerTitle: true,
        title: const Text('My first App'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: const Center(
        child: Text(
          'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
          style: TextStyle(
            // fontSize: 30,
            fontFamily: "Fira Code",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.indigoAccent,
        child: const Text('Click'),
      ),
    );
  }
}

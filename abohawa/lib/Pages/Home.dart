import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  @override
  void initState() {
    super.initState();
    // getData();
  }

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
      body: const Center(
        child: Text('Welcome to Abohawa!'),
      ),
    );
  }
}

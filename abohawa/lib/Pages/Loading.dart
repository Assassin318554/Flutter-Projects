import 'package:flutter/material.dart';

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
        child: Text('Loading Page!'),
      ),
    );
  }
}

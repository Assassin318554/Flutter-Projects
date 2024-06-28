import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  void _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 0.3, 0.7, 0.9],
            colors: [
              Color.fromARGB(255, 156, 188, 69),
              Color.fromARGB(255, 168, 199, 45),
              Color.fromARGB(255, 170, 210, 92),
              Color.fromRGBO(163, 186, 95, 1),
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                height: 300,
                child: Lottie.asset(
                  'assets/Animation1719455588029.json',
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 50),
              const Text(
                'Start To Do',
                style: TextStyle(
                  color: Colors.pink,
                  fontSize: 35,
                  fontFamily: 'Headland One',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Track your tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

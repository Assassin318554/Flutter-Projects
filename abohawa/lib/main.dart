import 'package:abohawa/Pages/Home.dart';
import 'package:abohawa/Pages/Loacation.dart';
import 'package:abohawa/Pages/Loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abohawa',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomePage(),
        '/location': (context) => const Location(),
      },
    );
  }
}

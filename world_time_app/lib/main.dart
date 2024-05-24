import 'package:flutter/material.dart';
import 'package:world_time_app/Pages/ChooseLocation.dart';
import 'package:world_time_app/Pages/HomePage.dart';
import 'package:world_time_app/Pages/Loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lime),
        useMaterial3: true,
      ),
      // home: const HomePage(),
      initialRoute: '/home',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomePage(),
        '/choose_location': (context) => const ChooseLocation(),
      },
    );
  }
}

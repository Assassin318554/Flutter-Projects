import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_app/pages/home/Loading.dart';
import 'package:todo_app/pages/home/home_page.dart';
// import 'package:todo_app/pages/home/home_page2.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'To Do App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.limeAccent,
          primary: const Color.fromARGB(255, 115, 150, 69),
          secondary: const Color.fromRGBO(163, 186, 95, 1),
        ),
        useMaterial3: true,
        fontFamily: 'Headland One',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Loading(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

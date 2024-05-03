import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myproject/other.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Practice"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            // const Text("Hello world"),
            const SizedBox(height: 50),
            Consumer(
              builder: (context, ref, child) {
                final name = ref.watch(helloWorldProvider);
                return Text(name);
              },
            ),
            // Consumer(
            //   builder: (context, ref, child) {
            //     return ElevatedButton(
            //       onPressed: () {},
            //       child: const Text("Change me"),
            //     );
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}

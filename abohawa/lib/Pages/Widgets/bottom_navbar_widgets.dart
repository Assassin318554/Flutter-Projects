import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: const Color.fromARGB(255, 186, 47, 211),
      elevation: 10,
      // shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.home),
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 9, 19, 72)),
              iconSize: MaterialStateProperty.all(30),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.location_on),
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 9, 19, 72)),
              iconSize: MaterialStateProperty.all(30),
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            style: ButtonStyle(
              iconColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 9, 19, 72)),
              iconSize: MaterialStateProperty.all(30),
            ),
          )
        ],
      ),
    );
  }
}

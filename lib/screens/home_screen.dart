import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Home Screen ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}

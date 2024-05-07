import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RedScreen extends StatelessWidget {
  const RedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'red Screen ',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}

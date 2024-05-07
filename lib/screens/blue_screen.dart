import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BlueScreen extends StatelessWidget {
  const BlueScreen({super.key, required this.id});
  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'blue Screen ${id.toString()}',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ]),
    );
  }
}

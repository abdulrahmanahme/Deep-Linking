import 'package:flutter/material.dart';

class ColorDetailPage extends StatelessWidget {
  final Color color;
  final String id;

  const ColorDetailPage({super.key, required this.color, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(
        backgroundColor: color,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Screen ${id.toString()}',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ]),
    );
  }
}

import 'package:deep_linking/screens/color_details_page.dart';
import 'package:flutter/material.dart';

class ColorAppHomePage extends StatefulWidget {
  const ColorAppHomePage({super.key});

  @override
  State<ColorAppHomePage> createState() => _ColorAppHomePageState();
}

class _ColorAppHomePageState extends State<ColorAppHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColorDetailPage(
                              color: Colors.red,
                              id: 6.toString(),
                            )));
              },
              style: ElevatedButton.styleFrom(surfaceTintColor: Colors.red),
              child: const Text('Red Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ColorDetailPage(
                              color: Colors.blue,
                              id: 1.toString(),
                            )));
              },
              style: ElevatedButton.styleFrom(surfaceTintColor: Colors.blue),
              child: const Text('Blue Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

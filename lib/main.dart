// import 'dart:async';

import 'dart:async';
import 'dart:io';

import 'package:app_links/app_links.dart';
import 'package:deep_linking/go_router.dart';
import 'package:deep_linking/screens/blue_screen.dart';
import 'package:deep_linking/screens/color_app_home.dart';
import 'package:deep_linking/screens/color_details_page.dart';
import 'package:deep_linking/screens/home_screen.dart';
import 'package:deep_linking/screens/red_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: GoRouter(routes: [
        GoRoute(
          path: "/",
          builder: (context, state) => const ColorAppHomePage(),
        ),
        GoRoute(
          path: "/red/:itemId",
          builder: (context, state) => ColorDetailPage(
            color: Colors.red,
            id: state.pathParameters['itemId']!,
          ),
        ),
        GoRoute(
          path: "/blue/:itemId",
          builder: (context, state) {
            return ColorDetailPage(
              color: Colors.blue,
              id: state.pathParameters['itemId']!,
            );
          },
        ),
      ]),
      // routerConfig: GoRouter(routes: [
      //   GoRoute(
      //     path: "/",
      //     builder: (context, state) => HomeScreen(),
      //   ),
      //   GoRoute(
      //     path: "/red",
      //     builder: (context, state) => RedScreen(),
      //   ),
      //   GoRoute(
      //     path: "details/:itemId",
      //     builder: (context, state) =>
      //         BlueScreen(id: state.pathParameters['itemId']!),
      //   ),
      // ]),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

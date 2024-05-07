import 'package:deep_linking/screens/blue_screen.dart';
import 'package:deep_linking/screens/home_screen.dart';
import 'package:deep_linking/screens/red_screen.dart';
import 'package:go_router/go_router.dart';

class GoGouter {
  // static final goRouter = GoRouter(
  //   routes: [
  //     GoRoute(
  //       path: '/',
  //       builder: (context, state) => const HomeScreen(),
  //     ),
  //     GoRoute(
  //         path: '/blue/:id',
  //         builder: (context, state) {
  //           final id = state.uri.queryParameters['id'];

  //           return BlueScreen(
  //             id: id.toString(),
  //           );
  //         }),
  //     GoRoute(
  //       path: '/red',
  //       builder: (context, state) => const RedScreen(),
  //     ),
  //   ],
  // );
  static final goRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomeScreen(),
        routes: [
          GoRoute(
            path: 'red/',
            builder: (context, state) => const RedScreen(),
          ),
          GoRoute(
            path: 'details/:itemId',
            builder: (context, state) =>
                BlueScreen(id: state.pathParameters['itemId']!),
          ),
        ],
      ),
    ],
  );
}

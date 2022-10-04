import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gorouter_example/error_screen.dart';
import 'package:gorouter_example/page1_screen.dart';
import 'package:gorouter_example/page2_screen.dart';
import 'package:gorouter_example/page3_screen.dart';
import 'package:gorouter_example/page4_screen.dart';

const String title = 'GoRouter Routes';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _router.routerDelegate,
      routeInformationParser: _router.routeInformationParser,
      routeInformationProvider: _router.routeInformationProvider,
    );
  }

  final GoRouter _router = GoRouter(
    errorBuilder: (context, state) {
      return ErrorScreen(error: state.error);
    },
    routes: <GoRoute>[
      GoRoute(
          routes: <GoRoute>[
            GoRoute(
                path: 'page2',
                builder: ((context, state) {
                  return const Page2Screen();
                })),
            GoRoute(
              path: 'page3',
              builder: (context, state) {
                return const Page3Screen();
              },
            ),
            GoRoute(
              path: 'page4',
              builder: (context, state) {
                return const Page4Screen();
              },
            ),
          ],
          path: '/',
          builder: ((context, state) {
            return const Page1Screen();
          })),
    ],
  );
}

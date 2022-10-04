import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page4Screen extends StatelessWidget {
  const Page4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(router.location.toString()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() => context.go('/')),
              child: const Text('Go back to home page'),
            ),
          ],
        ),
      ),
    );
  }
}

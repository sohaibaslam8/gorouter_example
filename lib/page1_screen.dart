import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoRouter Routes'),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Page2 Button...
            ElevatedButton(
              onPressed: (() => context.go('/page2')),
              child: const Text('Go to page 2'),
            ),
            // Sized Box...
            const SizedBox(
              height: 10,
            ),
            // Page3 Button...
            ElevatedButton(
              onPressed: (() => context.go('/page3')),
              child: const Text('Go to page 3'),
            ),
          ],
        ),
      ),
    );
  }
}

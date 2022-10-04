import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page3Screen extends StatelessWidget {
  const Page3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GoRouter Routes'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (() => context.go('/page4')),
              child: const Text('Go to page4'),
            ),
          ],
        ),
      ),
    );
  }
}

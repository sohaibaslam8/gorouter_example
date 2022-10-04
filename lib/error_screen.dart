import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final Exception? error;
  const ErrorScreen({required this.error, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Text(error.toString()),
      ),
    );
  }
}

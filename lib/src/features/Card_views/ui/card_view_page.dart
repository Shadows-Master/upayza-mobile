import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class CardViewPage extends StatelessWidget {
  const CardViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CardViewPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CardViewPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

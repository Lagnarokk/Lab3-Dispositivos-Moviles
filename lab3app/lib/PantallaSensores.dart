import 'package:flutter/material.dart';
import 'main.dart';

class PantallaSensores extends StatelessWidget {
  const PantallaSensores({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sensores'),
      ),
      body: Center(
        child: const Text(
          'Pantalla de Sensores',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
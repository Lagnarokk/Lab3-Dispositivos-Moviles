import 'package:flutter/material.dart';
import 'main.dart';

class PantallaGestos extends StatelessWidget {
  const PantallaGestos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gestos'),
      ),
      body: Center(
        child: const Text(
          'Pantalla de Gestos',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

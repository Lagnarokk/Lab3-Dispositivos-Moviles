import 'package:flutter/material.dart';
import 'main.dart';

class Detalle extends StatelessWidget {
  const Detalle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detalle',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Detalle'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '',
                style: TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
               ElevatedButton(
              onPressed: () {
                  Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const MyApp()),
               );
               },
              child: const Icon(Icons.arrow_back),
             ),
            ],
          ),
        ),
      ),
    );
  }
}
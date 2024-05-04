import 'package:flutter/material.dart';
import 'main.dart';

class ListaDetalle extends StatelessWidget {
  const ListaDetalle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.red,
            child: const Center(
              child: Text('Item1'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: const Center(
              child: Text('Item2'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.red,
            child: const Center(
              child: Text('Item3'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
                  Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => const MyApp()),
               );
               },
              child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
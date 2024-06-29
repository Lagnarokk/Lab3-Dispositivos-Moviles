import 'package:flutter/material.dart';
import 'main.dart';

class ListaDetalle extends StatefulWidget {
  const ListaDetalle({super.key});

  @override
  _ListaDetalleState createState() => _ListaDetalleState();
}

class _ListaDetalleState extends State<ListaDetalle> {
  @override
  void initState() {
    super.initState();
    print('ListaDetalle - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('ListaDetalle - didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant ListaDetalle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('ListaDetalle - didUpdateWidget');
  }

  @override
  void deactivate() {
    print('ListaDetalle - deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('ListaDetalle - dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    print('ListaDetalle - reassemble');
  }

  @override
  Widget build(BuildContext context) {
    print('ListaDetalle - build');
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

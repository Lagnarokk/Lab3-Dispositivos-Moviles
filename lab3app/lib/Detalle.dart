import 'package:flutter/material.dart';
import 'main.dart';

class Detalle extends StatefulWidget {
  const Detalle({super.key});

  @override
  _DetalleState createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  @override
  void initState() {
    super.initState();
    print('Detalle - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('Detalle - didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant Detalle oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('Detalle - didUpdateWidget');
  }

  @override
  void deactivate() {
    print('Detalle - deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('Detalle - dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    print('Detalle - reassemble');
  }

  @override
  Widget build(BuildContext context) {
    print('Detalle - build');
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

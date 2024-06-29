import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Detalle.dart';
import 'ListaDetalle.dart';
import 'PantallaSensores.dart';
import 'PantallaGestos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 3',
      theme: ThemeData(
        fontFamily: 'NuevaFuente',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lab 8'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    print('MyHomePage - initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('MyHomePage - didChangeDependencies');
  }

  @override
  void didUpdateWidget(covariant MyHomePage oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('MyHomePage - didUpdateWidget');
  }

  @override
  void deactivate() {
    print('MyHomePage - deactivate');
    super.deactivate();
  }

  @override
  void dispose() {
    print('MyHomePage - dispose');
    super.dispose();
  }

  @override
  void reassemble() {
    super.reassemble();
    print('MyHomePage - reassemble');
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  Widget getResultIcon() {
    if (_counter >= 15) {
      return Column(
        children: [
          SvgPicture.asset(
            'assets/icons/win.svg',
            width: 24,
            height: 24,
          ),
          const Text(
            '¡Victoria!',
            style: TextStyle(color: Colors.green),
          ),
        ],
      );
    } else if (_counter <= 10) {
      return Column(
        children: [
          SvgPicture.asset(
            'assets/icons/skull.svg',
            width: 24,
            height: 24,
          ),
          const Text(
            'Derrota',
            style: TextStyle(color: Colors.red),
          ),
        ],
      );
    } else {
      return Container(); // En caso de que no haya icono para mostrar
    }
  }

  @override
  Widget build(BuildContext context) {
    print('MyHomePage - build');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Lista Detalle'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListaDetalle()),
                );
              },
            ),
            ListTile(
              title: Text('Detalle'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Detalle()),
                );
              },
            ),
            ListTile(
              title: Text('Sensores'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaSensores()),
                );
              },
            ),
            ListTile(
              title: Text('Gestos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaGestos()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Has presionado el botón esta cantidad de veces:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            getResultIcon(),
          ],
        ),
      ),
      persistentFooterButtons: [
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _resetCounter,
                  tooltip: 'Reset',
                  child: SvgPicture.asset(
                    'assets/icons/8666618_eye_icon.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                FloatingActionButton(
                  onPressed: _decreaseCounter,
                  tooltip: 'decrease',
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        ),
      ],
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Detalle()),
              );
            },
            child: const Text('Detalle'),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ListaDetalle()),
              );
            },
            child: const Text('Lista'),
          ),
        ],
      ),
    );
  }
}

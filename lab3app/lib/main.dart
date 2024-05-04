import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'Detalle.dart'; 
import 'ListaDetalle.dart';// Importa la pantalla de detalle

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
      home: const MyHomePage(title: 'Lab 3'),
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  //restar contador
  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }
  //reset contador
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber, 
        title: Text(widget.title),
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
              style: Theme.of(context).textTheme.headlineLarge,
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
            child: const Icon(Icons.arrow_forward),
          ),
         
          FloatingActionButton(
            onPressed: _resetCounter,
            tooltip: 'Reset',
            //child: const Icon(Icons.refresh),
            child: //SVG
            SvgPicture.asset(
              'assets/icons/8666618_eye_icon.svg', 
              width: 100,
              height: 100,
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

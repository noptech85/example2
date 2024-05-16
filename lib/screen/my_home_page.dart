
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageStateState();
}

class _MyHomePageStateState extends State<MyHomePage> {
  int _counter =0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementMinus() {
    setState(() {
   //   $val = $val * -1;
      _counter--;
    });
  }

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text("My increment counter"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$_counter"),
            ElevatedButton(onPressed: _incrementCounter, child: Icon(Icons.add)),
            ElevatedButton(onPressed: _incrementMinus, child: Icon(Icons.minimize)),
          ],
        ),
      ),
    );
  }
}


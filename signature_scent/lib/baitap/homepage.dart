import 'package:flutter/material.dart';
import 'dart:math' as math;

class GridHomePage extends StatefulWidget {
  const GridHomePage({super.key});

  @override
  State<GridHomePage> createState() => _GridHomePageState();
}

class _GridHomePageState extends State<GridHomePage> {
  late int socot = 3;
  late int sodong = 5;
  late int socon = socot * sodong;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('H O M E'),
      ),
      body: GridView.count(
        crossAxisCount: socot,
        children: List.generate(socon, (index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                  .withOpacity(1.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Ô số $index',
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}

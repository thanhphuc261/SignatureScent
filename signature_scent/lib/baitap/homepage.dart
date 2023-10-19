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
    return GridView.count(
      crossAxisCount: socot,
      children: List.generate(socon, (index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(10),
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            width: double.infinity,
            height: double.infinity,
            child: Text(
              'Ô số $index',
            ),
          ),
        );
      }),
    );
  }
}

import 'dart:math';

import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item, required this.imgList});

  final int item;
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.lightGreenAccent,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: Image.asset(
                'images/${imgList[Random().nextInt(imgList.length)]}.jpg',
                width: 100,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title $item',
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                  Text(
                    'sub title $item',
                    style: const TextStyle(fontSize: 14, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

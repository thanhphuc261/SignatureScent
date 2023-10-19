import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/items/itemclass.dart';

class ItemList extends StatelessWidget {
  const ItemList({super.key, required this.items, required this.imgList});

  final int items;
  final List<String> imgList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Listview'),
      ),
      body: ItemClass(
        items: items,
        imgList: imgList,
      ),
    );
  }
}

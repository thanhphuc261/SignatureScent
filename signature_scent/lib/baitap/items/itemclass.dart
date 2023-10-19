import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/items/itemswidget.dart';

class ItemClass extends StatelessWidget {
  const ItemClass({super.key, required this.items});

  final int items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Listview'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(20),
        itemCount: items,
        itemBuilder: (BuildContext context, int index) {
          return ItemWidget(index: index);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 10,
          thickness: 0,
          color: Colors.white,
        ),
      ),
    );
  }
}

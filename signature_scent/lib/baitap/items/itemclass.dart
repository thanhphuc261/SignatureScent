import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/items/itemswidget.dart';

class ItemClass extends StatelessWidget {
  const ItemClass({super.key, required this.items, required this.imgList});

  final int items; // Total items
  final List<String> imgList; // Total img's name

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(20),
      itemCount: items,
      itemBuilder: (BuildContext context, int index) {
        return ItemWidget(
          item: index,
          imgList: imgList,
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        height: 10,
        thickness: 0,
        color: Colors.white,
      ),
    );
  }
}

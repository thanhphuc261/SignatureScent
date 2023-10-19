import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/items/itemclass.dart';
import 'package:signature_scent/baitap/items/itemlist.dart';
import 'package:signature_scent/screen/profile_setting/profile_setting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Go to setting profile',
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => (const ProfileSetting())),
                );
              },
              child: const Text("Click me"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => (const ItemList(
                      items: 5,
                      imgList: [
                        'listview_img_0',
                        'listview_img_1',
                        'listview_img_2',
                        'listview_img_3',
                        'listview_img_4',
                        'listview_img_5',
                        'listview_img_6',
                        'listview_img_7',
                        'listview_img_8',
                        'listview_img_9'
                      ],
                    )),
                  ),
                );
              },
              child: const Text("List View"),
            ),
          ],
        ),
      ),
    );
  }
}

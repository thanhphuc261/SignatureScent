import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/items/itemclass.dart';
import 'package:signature_scent/screen/profile_setting/profile_setting.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key, required this.title});
  final String title;
  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
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
                        builder: (context) => (const ItemClass(
                              items: 5,
                            ))),
                  );
                },
                child: const Text("Click me"))
          ],
        ),
      ),
    );
  }
}

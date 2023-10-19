import 'package:flutter/material.dart';
import 'package:signature_scent/baitap/homepage.dart';
import 'package:signature_scent/baitap/listdrawer.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key, required String title});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('DEMO APP'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.star),
            tooltip: 'Show Setting',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a setting')));
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: ListView(
            children: [
              listdrawer(
                  icon: Icons.home,
                  title: 'Home',
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const GridHomePage())),
                      )),
              listdrawer(
                  icon: Icons.list,
                  title: 'List',
                  onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => (const GridHomePage())),
                      )),
            ],
          ),
        ),
      ),
    );
  }
}

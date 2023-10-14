import 'package:flutter/material.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('SETTING PROFILE'),
         actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
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
          child: ListView(
        children: const [
          DrawerHeader(
            child: Text("Menu"),
          ),
          ListTile(
            title: Text('Danh sách nước hoa'),
          ),
           ListTile(
            title: Text('Danh sách loại nước hoa'),
          ),
           ListTile(
            title: Text('Trở về trang chủ'),
          ),
        ],
      ),),
      
    );
  }
}

import 'package:flutter/material.dart';
import 'package:signature_scent/screen/profile_setting/order.dart';

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
      body: Column(
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (const OrderList())),
              );
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Icon(Icons.shopping_basket_sharp),
                ),
                Text("Danh sách đơn hàng"),
              ],
            ),
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
        ),
      ),
    );
  }
}

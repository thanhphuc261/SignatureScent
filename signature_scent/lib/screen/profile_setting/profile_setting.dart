import 'package:flutter/material.dart';
import 'package:signature_scent/screen/profile_setting/listmenu.dart';
import 'package:signature_scent/screen/profile_setting/order.dart';
import 'package:signature_scent/screen/profile_setting/profile.dart';
import 'package:signature_scent/screen/profile_setting/statistics.dart';

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
          const ProfileScreen(),
          const Statistics(),
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
              child: Icon(
                Icons.person,
                color: Colors.white,
                size: 46,
              ),
            ),
            MyListTilte(
                icon: Icons.label_important_sharp, title: 'Danh sách sản phẩm'),
            MyListTilte(
                icon: Icons.label_important_sharp, title: 'Danh sách sản phẩm'),
            MyListTilte(
                icon: Icons.logout, title: 'Đăng xuất'),
          ],
        ),
      ),
    );
  }
}

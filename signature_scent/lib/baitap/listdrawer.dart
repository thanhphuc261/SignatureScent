import 'package:flutter/material.dart';

class listdrawer extends StatelessWidget {
  const listdrawer(
      {super.key,
      required this.icon,
      required this.title,
      required this.onTap});
  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        onTap: onTap,
        title: Text(title,
            style: const TextStyle(
              color: Colors.white,
            )),
      ),
    );
  }
}

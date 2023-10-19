import 'package:flutter/material.dart';

class MyListTilte extends StatelessWidget {
  const MyListTilte({super.key, required this.icon, required this.title});
 final IconData icon;
 final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10),
      child: ListTile(
        leading: Icon(icon,color: Colors.white,),
        title: Text(title,style:const TextStyle(color :Colors.white,) ),
       ),
    );
  }
}
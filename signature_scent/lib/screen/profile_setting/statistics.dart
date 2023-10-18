import 'package:flutter/material.dart';

class Statistics extends StatelessWidget {
  const Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _builButtomCollumn(Colors.black, Icons.usb_off, 'Đơn Hàng'),
        _builButtomCollumn(Colors.black, Icons.abc_outlined, 'Đã mua'),
        _builButtomCollumn(Colors.black, Icons.attach_money, 'Chi Tiêu'),
      ],
    );
  }
  Column _builButtomCollumn(Color color,IconData icon,String lable){
    return  Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              lable,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
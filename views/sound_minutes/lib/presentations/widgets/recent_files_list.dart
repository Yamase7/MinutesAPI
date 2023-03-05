import 'package:flutter/material.dart';

class RecentFilesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10.0),
          ListTile(
            title: Text('全体会議'),
            subtitle: Text('2022/01/01 10:30'),
          ),
          ListTile(
            title: Text('チーム会議'),
            subtitle: Text('2022/02/14 15:20'),
          ),
          ListTile(
            title: Text('〇〇について'),
            subtitle: Text('2022/03/05 08:45'),
          ),
          ListTile(
            title: Text('〇〇について'),
            subtitle: Text('2022/03/05 08:45'),
          ),
          ListTile(
            title: Text('〇〇について'),
            subtitle: Text('2022/03/05 08:45'),
          ),
        ],
      ),
    );
  }
}

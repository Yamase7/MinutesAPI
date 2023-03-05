import 'package:flutter/material.dart';

import 'recent_files_list.dart';
import 'record_button.dart';
import 'upload_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavigationIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: 
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: 
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const RecordButton(key: ValueKey('RecordButtonFromHome')),
                    const UploadButton(key: ValueKey('Upload')),
                  ],
                ),
              ),
              RecentFilesList(),
            ],
          ),
          
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavigationIndex = index;
    });
  }
}

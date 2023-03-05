import 'package:flutter/material.dart';

class RecordButton extends FloatingActionButton {
  const RecordButton({Key? key})
      : super(
          key: key,
          onPressed: _handleButtonPress,
          tooltip: 'Increment',
          child: const Icon(Icons.mic),
        );

  static void _handleButtonPress() {}
}

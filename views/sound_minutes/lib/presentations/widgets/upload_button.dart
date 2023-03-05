import 'package:flutter/material.dart';

class UploadButton extends FloatingActionButton {
  const UploadButton({Key? key})
      : super(
          key: key,
          onPressed: _handleButtonPress,
          tooltip: 'Increment',
          child: const Icon(Icons.upload),
        );

  static void _handleButtonPress() {}
}

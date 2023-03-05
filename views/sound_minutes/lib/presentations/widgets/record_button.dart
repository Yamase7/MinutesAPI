import 'package:flutter/material.dart';

class RecordButton extends StatelessWidget {
  const RecordButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        primary: Colors.blue,
        fixedSize: const Size.square(160)
      ),
      child: const Icon(
        Icons.mic,
        size: 32,
      ),
    );
  }

  void onPressed() {
  }
}

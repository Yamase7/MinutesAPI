import 'package:flutter/material.dart';

class UploadButton extends StatelessWidget {
  const UploadButton({Key? key}) : super(key: key);

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
        Icons.upload,
        size: 32,
      ),
    );
  }

  void onPressed() {
  }
}

import 'package:flutter/material.dart';
class Ocr extends StatelessWidget {
  const Ocr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('OCR page')),
      body: const Center(
        child: Text('Ocr page'),

      ),

    );
  }
}

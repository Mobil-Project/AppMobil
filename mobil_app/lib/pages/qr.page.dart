import'package:flutter/material.dart';
class Qr extends StatelessWidget {
  const Qr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('QR page')),
      body: const Center(
        child: Text('Qr pages'),

      ),

    );
  }
}

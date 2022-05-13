import 'package:flutter/material.dart';


class InscritPage extends StatelessWidget {
  const InscritPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title:const Text('User profile page')),
      body: const Center(
        child: Text('User page'),

      ),

    );
  }
}
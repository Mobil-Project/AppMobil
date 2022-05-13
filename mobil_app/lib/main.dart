import 'package:flutter/material.dart';
import 'package:mobil_app/pages/home.page.dart';
import 'package:mobil_app/pages/inscrit.page.dart';
import 'package:mobil_app/pages/jeu.pag.dart';
import 'package:mobil_app/pages/ocr.page.dart';
import 'package:mobil_app/pages/qr.page.dart';
import 'package:mobil_app/pages/regles.pages.dart';


void main(){
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const RootApp();
  }
}
class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        primarySwatch:Colors.blueGrey
      ),
      routes:{
        "/home":(context)=> const HomePage(),
        "/profil":(context)=> const InscritPage(),
        "/ocr":(context)=> const Ocr(),
        "/qr":(context)=> const Qr(),
        "/regles":(context)=> const Regles(),
       "/jeu":(context)=> const Jeu(),

      },
      initialRoute: '/home',
    );
  }
}







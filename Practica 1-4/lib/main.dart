import 'package:flutter/material.dart';
//import 'package:practica1/widget/inicio.dart';
//import 'package:practica1/widget2/Practica2.dart';
//import 'package:practica1/operaciones/suma.dart';
//import 'package:practica1/aritmeticas/practica4-1.dart';
import 'package:practica1/Repaso/Repaso.dart';

//import 'package:practica1/aritmeticas/practica4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Repaso());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quizhome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Quizhome());
  }
}

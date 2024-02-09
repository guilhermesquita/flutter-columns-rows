import 'package:flutter/material.dart';

class MaterialAppClass extends StatelessWidget {
  final String title;

  const MaterialAppClass({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Container(
          child: Center(
        child: Text(title),
      )),
    );
  }
}

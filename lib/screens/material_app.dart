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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState(title: 'Contador');
  }
}

class HomePageState extends State<HomePage> {
  final String title;
  int counter = 0;

  HomePageState({required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      home: Center(
          child: GestureDetector(
        child: Text('$title: $counter'),
        onTap: () {
          setState(() {
            counter++;
          });
          print(counter);
        },
      )),
    );
    ;
  }
}

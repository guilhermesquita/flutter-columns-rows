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
  const HomePage({super.key});

  @override
  State<HomePage> createState() {
    // ignore: no_logic_in_create_state
    return HomePageState(title: 'Contador');
  }
}

class HomePageState extends State<HomePage> {
  final String title;
  int counter = 0;

  HomePageState({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            'Home Page',
            style: (TextStyle(color: Colors.white)),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          hoverColor: Colors.pink,
          backgroundColor: Colors.red,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: Container(
          width: 200,
          height: 200,
          color: Colors.green,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ));
  }
}

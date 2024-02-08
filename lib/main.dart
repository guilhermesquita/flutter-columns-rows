import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
          SizedBox(
            width: 50,
          ),
          Container(
            color: Colors.blue,
            width: 100,
            height: 100,
          ),
          Container(
            color: Colors.green,
            width: 100,
            height: 100,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final String title;
  const LoginScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      )),
    );
  }
}

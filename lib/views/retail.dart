import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class retail extends StatefulWidget {
  const retail({super.key});

  @override
  State<retail> createState() => _retailState();
}

class _retailState extends State<retail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Retail')),
    );
  }
}

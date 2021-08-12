import 'package:flutter/material.dart';

class Hesabim extends StatefulWidget {
  const Hesabim({Key? key}) : super(key: key);

  @override
  _HesabimState createState() => _HesabimState();
}

class _HesabimState extends State<Hesabim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesabım'),
      ),
    );
  }
}

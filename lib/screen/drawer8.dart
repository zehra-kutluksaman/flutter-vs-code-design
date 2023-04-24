import 'package:flutter/material.dart';

class Drawer8 extends StatefulWidget {
  const Drawer8({super.key});

  @override
  State<Drawer8> createState() => _Drawer8State();
}

class _Drawer8State extends State<Drawer8> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.brown,
        ));
  }
}

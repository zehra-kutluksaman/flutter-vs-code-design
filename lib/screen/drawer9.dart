import 'package:flutter/material.dart';

class Drawer9 extends StatefulWidget {
  const Drawer9({super.key});

  @override
  State<Drawer9> createState() => _Drawer9State();
}

class _Drawer9State extends State<Drawer9> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.grey,
        ));
  }
}

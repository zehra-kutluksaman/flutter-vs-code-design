import 'package:flutter/material.dart';

class Drawer3 extends StatefulWidget {
  const Drawer3({super.key});

  @override
  State<Drawer3> createState() => _Drawer3State();
}

class _Drawer3State extends State<Drawer3> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.pink,
        ));
  }
}

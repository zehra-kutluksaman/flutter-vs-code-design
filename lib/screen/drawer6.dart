import 'package:flutter/material.dart';

class Drawer6 extends StatefulWidget {
  const Drawer6({super.key});

  @override
  State<Drawer6> createState() => _Drawer6State();
}

class _Drawer6State extends State<Drawer6> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.purple,
        ));
  }
}

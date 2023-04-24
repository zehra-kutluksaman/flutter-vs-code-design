import 'package:flutter/material.dart';

class Drawer4 extends StatefulWidget {
  const Drawer4({super.key});

  @override
  State<Drawer4> createState() => _Drawer4State();
}

class _Drawer4State extends State<Drawer4> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.orange,
        ));
  }
}

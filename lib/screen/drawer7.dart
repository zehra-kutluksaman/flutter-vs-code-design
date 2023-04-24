import 'package:flutter/material.dart';

class Drawer7 extends StatefulWidget {
  const Drawer7({super.key});

  @override
  State<Drawer7> createState() => _Drawer7State();
}

class _Drawer7State extends State<Drawer7> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.green,
        ));
  }
}

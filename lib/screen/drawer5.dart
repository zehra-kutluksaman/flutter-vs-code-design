import 'package:flutter/material.dart';

class Drawer5 extends StatefulWidget {
  const Drawer5({super.key});

  @override
  State<Drawer5> createState() => _Drawer5State();
}

class _Drawer5State extends State<Drawer5> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        width: 150,
        child: Container(
          color: Colors.white,
        ));
  }
}

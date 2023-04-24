import 'package:flutter/material.dart';

class Page5 extends StatefulWidget {
  const Page5({super.key});

  @override
  State<Page5> createState() => _Page5State();
}

class _Page5State extends State<Page5> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    animation = CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn);
    super.initState();
    animationController.forward();
  }

  @override
  void dispose() {
    animationController;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      alignment: Alignment.bottomCenter,
      scale: animation,
      child: Scaffold(
        //backgroundColor: Color.fromARGB(255, 46, 45, 45),
        body: Container(color: Colors.pink),
      ),
    );
  }
}

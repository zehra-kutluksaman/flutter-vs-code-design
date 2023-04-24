import 'package:flutter/material.dart';

class Page8 extends StatefulWidget {
  const Page8({super.key});

  @override
  State<Page8> createState() => _Page8State();
}

class _Page8State extends State<Page8> with SingleTickerProviderStateMixin {
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
        body: Container(color: Colors.brown),
      ),
    );
  }
}

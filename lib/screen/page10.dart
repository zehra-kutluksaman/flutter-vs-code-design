import 'package:flutter/material.dart';

class Page10 extends StatefulWidget {
  const Page10({super.key});

  @override
  State<Page10> createState() => _Page10State();
}

class _Page10State extends State<Page10> with SingleTickerProviderStateMixin {
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
        body: Container(color: Color.fromARGB(255, 119, 52, 3)),
      ),
    );
  }
}

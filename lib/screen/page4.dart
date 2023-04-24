import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> with SingleTickerProviderStateMixin {
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
        body: Container(color: Colors.orange),
      ),
    );
  }
}

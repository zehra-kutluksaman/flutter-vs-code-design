import 'package:flutter/material.dart';

class HoverMaker extends StatefulWidget {
  final Widget? child;
  final Function() onTap;
  const HoverMaker({super.key, this.child, required this.onTap});

  @override
  State<HoverMaker> createState() => _HoverMakerState();
}

class _HoverMakerState extends State<HoverMaker> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: widget.onTap,
        hoverColor: const Color.fromARGB(255, 8, 81, 155),
        child: widget.child,
      ),
    );
  }
}

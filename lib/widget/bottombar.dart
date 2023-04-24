import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 26, 135, 225),
      body: Row(
        children: const [
          Icon(
            Icons.timelapse_rounded,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 3),
          Text(
            "1",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.terrain_outlined,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 3),
          Text(
            "0",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 5),
          Icon(
            Icons.expand_circle_down_outlined,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 3),
          Text(
            "14",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.play_circle,
            size: 15,
            color: Colors.white,
          ),
          SizedBox(width: 20),
          Text(
            "Debug my code + packages ",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Icon(
            Icons.hexagon_outlined,
            size: 12,
            color: Colors.white,
          ),
          SizedBox(width: 3),
          Text(
            "tabnine starter",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          Spacer(),
          Text(
            "Ln 314, Col 24",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Text(
            "Spaces: 2",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Text(
            "UTF-8",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Text(
            "CRLF",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Text(
            "{}  Dart",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
          SizedBox(width: 20),
          Text(
            "Go Live",
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PopoverItem extends StatefulWidget {
  final String rightText;
  final String leftText;

  const PopoverItem({
    super.key,
    required this.rightText,
    required this.leftText,
  });

  @override
  State<PopoverItem> createState() => _PopoverItemState();
}

class _PopoverItemState extends State<PopoverItem> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 190,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              widget.rightText,
              style: const TextStyle(
                  color: Color.fromARGB(255, 215, 210, 210), fontSize: 13),
            ),
            const Spacer(),
            Text(
              widget.leftText,
              style: const TextStyle(
                  color: Color.fromARGB(255, 215, 210, 210), fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}

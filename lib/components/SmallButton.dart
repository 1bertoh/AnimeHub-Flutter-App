import 'package:flutter/material.dart';

class SmallButton extends StatefulWidget {
  final String text;
  const SmallButton({required this.text, super.key});

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Text(widget.text ,
          style:
          const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }
}

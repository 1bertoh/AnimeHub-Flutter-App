import 'package:flutter/material.dart';

class SeeMoreButton extends StatelessWidget {
  final double width;
  final double height;
  final Function callBack;
  const SeeMoreButton({required this.width, required this.height, required this.callBack, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: () => callBack,
          child: const Text("Ver mais", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),)
      ),
    );
  }
}

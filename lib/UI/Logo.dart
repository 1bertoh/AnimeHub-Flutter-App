import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  const Logo({this.size = 1, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: SizedBox(
        child: Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.red, width: (67*size), height: (28*size),),
                Text("Anime", style: TextStyle(color: Colors.white, fontSize: (19*size), fontWeight: FontWeight.bold))
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.white, width: (47*size), height: (28*size),),
                Text("Hub", style: TextStyle(color: Colors.red, fontSize: (19*size), fontWeight: FontWeight.bold)),
              ],
            )
          ],
        ),
      ),
    );
  }
}

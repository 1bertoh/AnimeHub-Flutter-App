import 'package:flutter/material.dart';

class VerticalSpacing extends StatelessWidget {
  final double space;
  const VerticalSpacing({required this.space, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: space,);
  }
}

class HorizontalSpacing extends StatelessWidget {
  final double space;
  const HorizontalSpacing({required this.space, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: space,);
  }
}

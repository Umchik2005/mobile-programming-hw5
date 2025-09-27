import 'package:flutter/material.dart';

/// Row with evenly spaced star icons using MainAxisAlignment.spaceEvenly.
class StarRow extends StatelessWidget {
  const StarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(Icons.star, size: 40),
        Icon(Icons.star, size: 40),
        Icon(Icons.star, size: 40),
        Icon(Icons.star, size: 40),
        Icon(Icons.star, size: 40),
      ],
    );
  }
}

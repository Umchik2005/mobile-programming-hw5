import 'package:flutter/material.dart';

/// Column with left-aligned star icons using CrossAxisAlignment.start.
class StarColumn extends StatelessWidget {
  const StarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

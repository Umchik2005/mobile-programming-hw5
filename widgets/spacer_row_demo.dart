import 'package:flutter/material.dart';

/// Demonstrates Spacer pushing two containers to opposite ends of a Row.
class SpacerRowDemo extends StatelessWidget {
  const SpacerRowDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 60, height: 60, color: Colors.blue),
        const Spacer(),
        Container(width: 60, height: 60, color: Colors.orange),
      ],
    );
  }
}

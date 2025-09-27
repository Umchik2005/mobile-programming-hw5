import 'package:flutter/material.dart';

/// Demonstrates Expanded with different flex values inside a Row.
class ExpandedFlexDemo extends StatelessWidget {
  const ExpandedFlexDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(height: 80, color: Colors.red),
        ),
        Expanded(
          flex: 2,
          child: Container(height: 80, color: Colors.green),
        ),
      ],
    );
  }
}

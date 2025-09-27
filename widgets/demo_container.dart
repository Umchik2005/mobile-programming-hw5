import 'package:flutter/material.dart';

/// Demonstrates a decorated Container with margin, padding, rounded corners and an Icon child.
class DemoContainer extends StatelessWidget {
  const DemoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.all(20.0), // Outside space
        padding: const EdgeInsets.all(16.0), // Inside space
        height: 150,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.redAccent,
            borderRadius: BorderRadius.circular(16),
        ),
        child: const Icon(Icons.home, color: Colors.white, size: 48),
      ),
    );
  }
}

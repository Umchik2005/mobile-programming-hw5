import 'package:flutter/material.dart';

/// A password TextField example using a TextEditingController.
class PasswordField extends StatefulWidget {
  const PasswordField({super.key});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final _controller = TextEditingController();
  bool _obscure = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: _controller,
          obscureText: _obscure,
          decoration: InputDecoration(
            icon: const Icon(Icons.lock),
            border: const OutlineInputBorder(),
            labelText: 'Enter your password',
            suffixIcon: IconButton(
              icon: Icon(_obscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () => setState(() => _obscure = !_obscure),
            ),
          ),
        ),
        const SizedBox(height: 12),
        ElevatedButton(
          onPressed: () {
            final value = _controller.text;
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('You typed: $value')),
            );
          },
          child: const Text('Submit'),
        ),
      ],
    );
  }
}

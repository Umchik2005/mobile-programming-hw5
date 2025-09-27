import 'package:flutter/material.dart';

import 'widgets/demo_container.dart';
import 'widgets/star_row.dart';
import 'widgets/star_column.dart';
import 'widgets/password_field.dart';
import 'widgets/expanded_flex_demo.dart';
import 'widgets/spacer_row_demo.dart';
import 'widgets/user_profile_card.dart';
import 'widgets/product_list_item.dart';

void main() => runApp(const MyDemoApp());

class MyDemoApp extends StatelessWidget {
  const MyDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice Widgets',
      home: Scaffold(
        appBar: AppBar(title: const Text('Practice Widgets')),
        body: ListView(
          padding: const EdgeInsets.only(bottom: 24),
          children: const [
            SectionTitle('Container Examples'),
            SizedBox(height: 8),
            DemoContainer(),

            SectionTitle('Column / Row'),
            StarRow(),
            SizedBox(height: 16),
            StarColumn(),

            SectionTitle('Password Field'),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: PasswordField(),
            ),

            SectionTitle('Expanded & Flex'),
            SizedBox(height: 12),
            ExpandedFlexDemo(),

            SectionTitle('Spacer Demo'),
            SpacerRowDemo(),

            SectionTitle('Profile Card'),
            UserProfileCard(),

            SectionTitle('Product Item'),
            ProductListItem(),
          ],
        ),
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 4),
      child: Text(
        text,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

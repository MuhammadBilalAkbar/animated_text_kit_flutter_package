import 'package:animated_text_kit_flutter_package/pages/advanced_text_animations_page.dart';
import 'package:flutter/material.dart';

import 'text_liquid_fill_animations_page.dart';
import 'mixed_text_animations_page.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.title, {super.key});

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      const TextLiquidFillAnimationsPage('TextLiquidFill Animations'),
                    ),
                  ),
                  child: const Text('TextLiquidFill Animations'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      const MixedTextAnimationsPage('Mixed Text Animations Page'),
                    ),
                  ),
                  child: const Text('Mixed Text Animations Page'),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                      const AdvancedTextAnimationsPage('Advanced Text Animations Page'),
                    ),
                  ),
                  child: const Text('Advanced Text Animations Page'),
                ),
              ],
            ),
          ),
        ),
      );
}

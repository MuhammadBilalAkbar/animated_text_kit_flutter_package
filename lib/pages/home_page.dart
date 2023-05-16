import 'package:flutter/material.dart';

import '/pages/mixed_animations_page.dart';
import '/pages/rotate_animations_page.dart';
import '/pages/colorize_animations_page.dart';
import '/pages/fade_animations_page.dart';
import '/pages/text_liquid_fill_animations_page.dart';
import '/pages/flicker_animations_page.dart';
import '/pages/typer_animations_page.dart';
import '/pages/scale_animations_page.dart';
import '/pages/typewriter_animations_page.dart';
import '/pages/wavy_animations_page.dart';

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
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const MixedAnimationsPage('Mixed Animations Page'),
                      ),
                    ),
                    child: const Text('Mixed Animations Page'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const RotateAnimationsPage('Rotate Animations'),
                      ),
                    ),
                    child: const Text('Rotate Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const FadeAnimationsPage('Fade Animations'),
                      ),
                    ),
                    child: const Text('Fade Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const TyperAnimationsPage('Typer Animations'),
                      ),
                    ),
                    child: const Text('Typer Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const TypeWriterAnimationsPage(
                            'Typewriter Animations'),
                      ),
                    ),
                    child: const Text('Typewriter Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const ScaleAnimationsPage('Scale Animations'),
                      ),
                    ),
                    child: const Text('Scale Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const ColorizeAnimationsPage('Colorize Animations'),
                      ),
                    ),
                    child: const Text('Colorize Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const TextLiquidFillAnimationsPage(
                          'TextLiquidFill Animations',
                        ),
                      ),
                    ),
                    child: const Text('TextLiquidFill Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const WavyAnimationsPage('Wavy Animations'),
                      ),
                    ),
                    child: const Text('Wavy Animations'),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            const FlickerAnimationsPage('Flicker Animations'),
                      ),
                    ),
                    child: const Text('Flicker Animations'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

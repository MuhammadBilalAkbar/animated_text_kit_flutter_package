import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class RotateAnimationsPage extends StatelessWidget {
  const RotateAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Row(
            children: [
              const SizedBox(width: 20.0, height: 100.0),
              const Text(
                'Be',
                style: TextStyle(fontSize: 43.0),
              ),
              const SizedBox(width: 20.0, height: 100.0),
              DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Horizon',
                ),
                child: AnimatedTextKit(
                  animatedTexts: [
                    RotateAnimatedText('AWESOME'),
                    RotateAnimatedText('OPTIMISTIC'),
                    RotateAnimatedText('DIFFERENT'),
                  ],
                  onTap: () => debugPrint("Tap Event Rotate Animations Page"),
                ),
              ),
            ],
          ),
        ),
      );
}

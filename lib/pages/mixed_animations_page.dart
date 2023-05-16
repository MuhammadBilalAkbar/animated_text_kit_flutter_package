import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MixedAnimationsPage extends StatelessWidget {
  const MixedAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'Hello world!',
                  textStyle: textStyle,
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              totalRepeatCount: 4,
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const SizedBox(height: 20),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText('Android', textStyle: textStyle),
                TyperAnimatedText('iOS', textStyle: textStyle),
                TyperAnimatedText('Mac', textStyle: textStyle),
                ScaleAnimatedText('Scale', textStyle: textStyle),
                RotateAnimatedText('Rotated', textStyle: textStyle),
                ColorizeAnimatedText(
                  'Colorize',
                  textStyle: textStyle,
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.white,
                    Colors.purple,
                    Colors.blue,
                  ],
                ),
                FadeAnimatedText('Fade First', textStyle: textStyle),
                ScaleAnimatedText(
                  'Then Scale',
                  textStyle: const TextStyle(
                    fontSize: 70.0,
                    fontFamily: 'Canterbury',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

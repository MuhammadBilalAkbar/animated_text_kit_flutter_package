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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedTextKit(
              totalRepeatCount: 10,
              animatedTexts: [
                RotateAnimatedText(
                  'RotateAnimatedText',
                  textStyle: textStyle,
                  duration: const Duration(seconds: 3),
                ),
              ],
              pause: const Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              totalRepeatCount: 10,
              animatedTexts: [
                FadeAnimatedText(
                  'FadeAnimatedText',
                  textStyle: textStyle,
                  duration: const Duration(seconds: 3),
                ),
              ],
            ),
            AnimatedTextKit(
              totalRepeatCount: 5,
              animatedTexts: [
                TyperAnimatedText(
                  'TyperAnimatedText',
                  textStyle: textStyle,
                  speed: const Duration(milliseconds: 400),
                ),
              ],
            ),
            AnimatedTextKit(
              totalRepeatCount: 5,
              animatedTexts: [
                TypewriterAnimatedText(
                  'TypewriterAnimatedText',
                  textStyle: textStyle,
                  speed: const Duration(milliseconds: 400),
                ),
              ],
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                ScaleAnimatedText(
                  'ScaleAnimatedText',
                  textStyle: textStyle,
                  duration: const Duration(seconds: 1),
                ),
              ],
            ),
            AnimatedTextKit(
              isRepeatingAnimation: true,
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  'ColorizeAnimatedText',
                  textStyle: textStyle,
                  colors: [
                    Colors.red,
                    Colors.yellow,
                    Colors.white,
                    Colors.purple,
                    Colors.blue,
                  ],
                  speed: const Duration(seconds: 1),
                ),
              ],
            ),
            AnimatedTextKit(
              totalRepeatCount: 5,
              animatedTexts: [
                WavyAnimatedText(
                  'WavyAnimatedText',
                  textStyle: textStyle,
                  speed: const Duration(seconds: 1),
                ),
              ],
            ),
            AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText('FlickerAnimatedText', textStyle: textStyle),
              ],
              onTap: () => debugPrint("Tap Event Flicker Animations Page"),
            ),
          ],
        ),
      ),
    );
  }
}

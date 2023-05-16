import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WavyAnimationsPage extends StatelessWidget {
  const WavyAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 20.0,
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText('Hello World'),
                WavyAnimatedText('Look at the waves'),
              ],
              isRepeatingAnimation: true,
              onTap: () => debugPrint("Tap Event Wavy Animations Page"),
            ),
          ),
        ),
      );
}

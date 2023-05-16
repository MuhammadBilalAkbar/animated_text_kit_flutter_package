import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FadeAnimationsPage extends StatelessWidget {
  const FadeAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  FadeAnimatedText('do IT!'),
                  FadeAnimatedText('do it RIGHT!!'),
                  FadeAnimatedText('do it RIGHT NOW!!!'),
                ],
                onTap: () => debugPrint("Tap Event Fade Animations Page"),
              ),
            ),
          ),
        ),
      );
}

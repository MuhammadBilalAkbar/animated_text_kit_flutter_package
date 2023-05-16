import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TypeWriterAnimationsPage extends StatelessWidget {
  const TypeWriterAnimationsPage(this.title, {Key? key}) : super(key: key);

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
                fontSize: 30.0,
                fontFamily: 'Agne',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TypewriterAnimatedText('Discipline is the best tool'),
                  TypewriterAnimatedText('Design first, then code'),
                  TypewriterAnimatedText('Do not patch bugs out, rewrite them'),
                  TypewriterAnimatedText(
                      'Do not test bugs out, design them out'),
                ],
                onTap: () => debugPrint("Tap Event Typewriter Animations Page"),
              ),
            ),
          ),
        ),
      );
}

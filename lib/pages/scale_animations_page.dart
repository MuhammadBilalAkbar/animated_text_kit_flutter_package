import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ScaleAnimationsPage extends StatelessWidget {
  const ScaleAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) =>
      Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: SizedBox(
            width: 250.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 70.0,
                fontFamily: 'Canterbury',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  ScaleAnimatedText('Think'),
                  ScaleAnimatedText('Build'),
                  ScaleAnimatedText('Ship'),
                ],
                onTap: () =>
                    debugPrint("Tap Event Scale Animations Page"),
              ),
            ),
          ),
        ),
      );
}
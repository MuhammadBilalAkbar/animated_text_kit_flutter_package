import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TyperAnimationsPage extends StatelessWidget {
  const TyperAnimationsPage(this.title, {Key? key}) : super(key: key);

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
                fontFamily: 'Bobbers',
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  TyperAnimatedText('It is not enough to do your best,'),
                  TyperAnimatedText('you must know what to do,'),
                  TyperAnimatedText('and then do your best'),
                  TyperAnimatedText('- W.Edwards Deming'),
                ],
                onTap: () => debugPrint("Tap Event Typer Animations Page"),
              ),
            ),
          ),
        ),
      );
}

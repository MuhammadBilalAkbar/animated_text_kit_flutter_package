import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class FlickerAnimationsPage extends StatelessWidget {
  const FlickerAnimationsPage(this.title, {Key? key}) : super(key: key);

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
                fontSize: 35,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 7.0,
                    color: Colors.white,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  FlickerAnimatedText('Flicker Frenzy'),
                  FlickerAnimatedText('Night Vibes On'),
                  FlickerAnimatedText("C'est La Vie !"),
                ],
                onTap: () => debugPrint("Tap Event Flicker Animations Page"),
              ),
            ),
          ),
        ),
      );
}

import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class ColorizeAnimationsPage extends StatelessWidget {
  const ColorizeAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: AnimatedTextKit(
            animatedTexts: [
              ColorizeAnimatedText(
                'Larry Page',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
              ColorizeAnimatedText(
                'Bill Gates',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
              ColorizeAnimatedText(
                'Steve Jobs',
                textStyle: colorizeTextStyle,
                colors: colorizeColors,
              ),
            ],
            isRepeatingAnimation: true,
            onTap: () => debugPrint("Tap Event Colorize Animations Page"),
          ),
        ),
      ),
    );
  }
}

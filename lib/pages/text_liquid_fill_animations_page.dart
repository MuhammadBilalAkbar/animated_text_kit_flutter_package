import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class TextLiquidFillAnimationsPage extends StatelessWidget {
  const TextLiquidFillAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: TextLiquidFill(
            text: 'HEY FLUTTER COM',
            waveColor: Colors.blueAccent,
            boxBackgroundColor: Colors.white,
            boxHeight: 50.0,
            textStyle: const TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}

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
          child: SizedBox(
            width: 250.0,
            child: TextLiquidFill(
              text: 'LIQUIDY',
              waveColor: Colors.blueAccent,
              boxBackgroundColor: Colors.redAccent,
              textStyle: const TextStyle(
                fontSize: 70.0,
                fontWeight: FontWeight.bold,
              ),
              boxHeight: 300.0,
            ),
          ),
        ),
      );
}

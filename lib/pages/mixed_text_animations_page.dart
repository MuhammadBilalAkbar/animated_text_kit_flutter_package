import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class MixedTextAnimationsPage extends StatelessWidget {
  const MixedTextAnimationsPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                BuildContainer(
                  color: Colors.blue,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText(
                        'RotateAnimatedText',
                        textStyle: textStyle,
                        duration: const Duration(seconds: 3),
                      ),
                    ],
                    totalRepeatCount: 5,
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.red,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      FadeAnimatedText(
                        'FadeAnimatedText',
                        textStyle: textStyle,
                        duration: const Duration(seconds: 3),
                      ),
                    ],
                    totalRepeatCount: 5,
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.lightBlue,
                  child: AnimatedTextKit(
                    animatedTexts: [
                      TyperAnimatedText(
                        'TyperAnimatedText',
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 400),
                      ),
                    ],
                    totalRepeatCount: 5,
                    pause: const Duration(seconds: 5),
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.green,
                  child: AnimatedTextKit(
                    totalRepeatCount: 5,
                    animatedTexts: [
                      TypewriterAnimatedText(
                        'TypewriterAnimatedText',
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 400),
                      ),
                    ],
                    displayFullTextOnTap: true,
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.purple,
                  child: AnimatedTextKit(
                    repeatForever: true,
                    animatedTexts: [
                      ScaleAnimatedText(
                        'ScaleAnimatedText',
                        textStyle: textStyle,
                        duration: const Duration(seconds: 1),
                      ),
                    ],
                    onTap: () => debugPrint("Tap Event ScaleAnimatedText"),
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.teal,
                  child: AnimatedTextKit(
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
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.cyan,
                  child: AnimatedTextKit(
                    totalRepeatCount: 3,
                    animatedTexts: [
                      WavyAnimatedText(
                        'WavyAnimatedText',
                        textStyle: textStyle,
                        speed: const Duration(milliseconds: 500),
                      ),
                    ],
                    onFinished: () =>
                        debugPrint("Finished Event WavyAnimatedText"),
                    onNext: (_, __) =>
                        debugPrint("Next Event WavyAnimatedText"),
                  ),
                ),
                const SizedBox(height: 20),
                BuildContainer(
                  color: Colors.orange,
                  child: AnimatedTextKit(
                    totalRepeatCount: 5,
                    animatedTexts: [
                      FlickerAnimatedText(
                        'FlickerAnimatedText',
                        textStyle: textStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    super.key,
    required this.child,
    required this.color,
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: child),
    );
  }
}

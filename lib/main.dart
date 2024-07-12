import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Alignment bottomAlignment = Alignment.bottomRight;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              alignment: bottomAlignment,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bottomAlignment = bottomAlignment == Alignment.bottomRight
                        ? Alignment.topCenter
                        : Alignment.bottomRight;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 900),
                  alignment: bottomAlignment,
                  height: 50,
                  width: bottomAlignment == Alignment.bottomRight ? 50 : 100,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: bottomAlignment == Alignment.bottomRight
                        ? BorderRadius.circular(25)
                        : BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

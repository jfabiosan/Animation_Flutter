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
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            AnimatedAlign(
              duration: const Duration(milliseconds: 400),
              alignment: bottomAlignment,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    bottomAlignment = bottomAlignment == Alignment.bottomRight
                        ? Alignment.topCenter
                        : Alignment.bottomRight;
                    counter += 1;
                  });
                },
                child: Container(
                  alignment: bottomAlignment,
                  height: 50,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Click-me: $counter',
                      style: const TextStyle(color: Colors.white),
                    ),
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

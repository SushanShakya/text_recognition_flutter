import 'package:flutter/material.dart';
import 'package:text_recognition_flutter/views/home_view.dart';

void main() => runApp(const TextRecognitionApp());

class TextRecognitionApp extends StatelessWidget {
  const TextRecognitionApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Text Recognizer",
      home: HomeView(),
    );
  }
}

import 'dart:developer';
import 'dart:io';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'interface/text_recognizer.dart';

class MLKitTextRecognizer extends ITextRecognizer {
  late TextRecognizer recognizer;

  MLKitTextRecognizer() {
    recognizer = TextRecognizer();
  }

  void dispose() {
    recognizer.close();
  }

  @override
  Future<String> processImage(String imgPath) async {
    final image = InputImage.fromFile(File(imgPath));
    final recognized = await recognizer.processImage(image);
    return recognized.text;
  }

  Future<void> processImageInBlocks(InputImage image) async {
    final recognized = await recognizer.processImage(image);
    final blocks = recognized.blocks;
    for (int i = 0; i < blocks.length; i++) {
      final e = blocks[i];
      log("Block number $i");
      log(e.text);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:simple_dices/localization/simple_dice_translations.dart';
import 'package:simple_dices/screans/dices.dart';
import 'package:simple_dices/screans/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Simple Dice',
      translations: SimpleDiceTranslations(),
      locale: Get.deviceLocale,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

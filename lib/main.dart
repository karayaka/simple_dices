import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:simple_dices/localization/simple_dice_translations.dart';
import 'package:simple_dices/screans/home.dart';
import 'package:simple_dices/utiliys/theme.dart';
import 'package:simple_dices/utiliys/util.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Retrieves the default theme for the platform
    //TextTheme textTheme = Theme.of(context).textTheme;

    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme(context, "Comic Neue", "Comic Neue");

    MaterialTheme theme = MaterialTheme(textTheme);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Dice',
      translations: SimpleDiceTranslations(),
      locale: Get.deviceLocale,
      theme: theme.dark(),
      home: const Home(),
    );
  }
}

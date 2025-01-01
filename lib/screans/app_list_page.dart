import 'package:flutter/material.dart';
import 'package:cagnaz_apps/cagnaz_apps.dart';

class AppListPage extends StatelessWidget {
  const AppListPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CagnazApps(
      appName: "Simple Dices",
      desc:
          "Kutu oyunlarında kaybolan zarlardan sıkıldınızmı? Bu uygulama tam sizlik kaybolan zar!",
    );
  }
}

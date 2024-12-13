import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_dices/components/dice.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

class Dices extends StatefulWidget {
  final int diceCount;
  late final List<GlobalKey<DiceState>> widgetKeys;

  Dices({
    super.key,
    this.diceCount = 1,
  }) {
    widgetKeys = List.generate(
      diceCount,
      (index) => GlobalKey<DiceState>(),
    );
  }

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  @override
  void initState() {
    WakelockPlus.enable();
    super.initState();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    super.dispose();
  }

  var totalCount = 0.obs;
  @override
  Widget build(BuildContext context) {
    // Grid parametreleri
    const int crossAxisCount = 2; // Her satırda 2 eleman
    const double spacing = 5; // Elemanlar arasındaki boşluk
    const double itemHeight = 200; // Eleman yüksekliği
    const double itemWidth = 200; // Eleman genişliği

    // Toplam grid yüksekliği hesaplanıyor
    int rowCount = (widget.diceCount / crossAxisCount).ceil();
    double totalGridHeight =
        (rowCount * itemHeight) + ((rowCount - 1) * spacing);

    // Ekran yüksekliğini al
    double screenHeight = MediaQuery.of(context).size.height;

    // Dinamik üst boşluk
    double topPadding = (screenHeight - totalGridHeight) / 2;
    topPadding = topPadding > 0 ? topPadding : 0;

    return GestureDetector(
      onTap: () {
        print("object");
        _rollIt();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Obx(() => Text('${"total".tr}:${" "}$totalCount')),
          bottom: const PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Text(
                "Zar Atmak için Ekrana Dokun",
                style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )),
        ),
        body: _buidDices(topPadding, itemWidth, itemHeight),
      ),
    );
  }

  _rollIt() async {
    totalCount.value = 0;
    for (var i = 0; i < widget.widgetKeys.length; i++) {
      if (i != 0) {
        await Future.delayed(const Duration(microseconds: 600));
      }
      widget.widgetKeys[i].currentState!.rollIt();
    }
  }

  Widget _buidDices(double topPadding, double itemWidth, double itemHeight) {
    if (widget.diceCount == 1) {
      return Center(
        child: SizedBox(
            width: 150,
            height: 150,
            child: Dice(
              key: widget.widgetKeys[0],
              rolled: (cout) {
                totalCount.value += cout;
              },
            )),
      );
    } else {
      return _multipleDice(topPadding, itemWidth, itemHeight);
    }
  }

  Padding _multipleDice(
      double topPadding, double itemWidth, double itemHeight) {
    return Padding(
      padding: EdgeInsets.only(top: (topPadding - 100)),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Her satırda 2 öğe
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          //childAspectRatio: (itemWidth / itemHeight),
        ),
        itemCount: widget.diceCount,
        itemBuilder: (context, index) {
          return Dice(
            key: widget.widgetKeys[index],
            rolled: (count) {
              totalCount.value += count;
            },
          );
        },
      ),
    );
  }
}

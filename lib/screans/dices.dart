import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_dices/components/dice.dart';

class Dices extends StatefulWidget {
  final int diceCount;
  const Dices({
    super.key,
    this.diceCount = 1,
  });

  @override
  State<Dices> createState() => _DicesState();
}

class _DicesState extends State<Dices> {
  var totalCount = 0.obs;
  @override
  Widget build(BuildContext context) {
    List<GlobalKey<DiceState>> widgetKeys = List.generate(
      widget.diceCount,
      (index) => GlobalKey<DiceState>(),
    );
    // Grid parametreleri
    const int crossAxisCount = 2; // Her satırda 2 eleman
    const double spacing = 10; // Elemanlar arasındaki boşluk
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

    return Scaffold(
      appBar: AppBar(
        title: Obx(() => Text('${"total".tr}:${" "}$totalCount')),
      ),
      body: _buidDices(topPadding, itemWidth, itemHeight, widgetKeys),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          totalCount.value = 0;
          for (var key in widgetKeys) {
            await Future.delayed(const Duration(microseconds: 600));
            key.currentState!.rollIt();
          }
        },
        child: Text("roll".tr),
      ),
    );
  }

  Widget _buidDices(double topPadding, double itemWidth, double itemHeight,
      List<GlobalKey<DiceState>> widgetKeys) {
    if (widget.diceCount == 1) {
      return Center(
        child: SizedBox(
            width: 150,
            height: 150,
            child: Dice(
              key: widgetKeys[0],
              rolled: (cout) {
                totalCount.value += cout;
              },
            )),
      );
    } else {
      return _multipleDice(topPadding, itemWidth, itemHeight, widgetKeys);
    }
  }

  Padding _multipleDice(double topPadding, double itemWidth, double itemHeight,
      List<GlobalKey<DiceState>> widgetKeys) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding),
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
            key: widgetKeys[index],
            rolled: (count) {
              totalCount.value += count;
            },
          );
        },
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:simple_dices/components/dice.dart';
import 'package:simple_dices/utiliys/ad_helper.dart';
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
  BannerAd? bannerAd;
  @override
  void initState() {
    WakelockPlus.enable();
    super.initState();
    BannerAd(
            size: AdSize.banner,
            adUnitId: AdHelper.diceBannerAdUnitId,
            listener: BannerAdListener(
              onAdLoaded: (ad) {
                setState(() {
                  bannerAd = ad as BannerAd;
                });
              },
              onAdFailedToLoad: (ad, error) {
                ad.dispose();
              },
            ),
            request: const AdRequest())
        .load();
  }

  @override
  void dispose() {
    WakelockPlus.disable();
    if (bannerAd != null) {
      bannerAd!.dispose();
    }
    super.dispose();
  }

  var totalCount = 0.obs;
  var hasSound = true.obs;
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
        _rollIt();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Obx(() => Text('${"total".tr}:${" "}$totalCount')),
          actions: [
            Obx(
              () {
                return IconButton(
                    onPressed: () {
                      hasSound.value = !hasSound.value;
                    },
                    icon: Icon(hasSound.value
                        ? Icons.volume_off_outlined
                        : Icons.volume_up_outlined));
              },
            )
          ],
          bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20.0),
              child: Text(
                "touch_the_screen".tr,
                style:
                    const TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
              )),
        ),
        bottomNavigationBar: bannerAd != null
            ? SizedBox(
                height: bannerAd?.size.height.toDouble(),
                width: bannerAd?.size.width.toDouble(),
                child: AdWidget(
                  ad: bannerAd!,
                ),
              )
            : null,
        body: Obx(() =>
            _buidDices(hasSound.value, topPadding, itemWidth, itemHeight)),
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

  Widget _buidDices(
      bool hasSound, double topPadding, double itemWidth, double itemHeight) {
    if (widget.diceCount == 1) {
      return Center(
        child: SizedBox(
            width: 150,
            height: 150,
            child: Dice(
              hasSound: hasSound,
              key: widget.widgetKeys[0],
              rolled: (cout) {
                totalCount.value += cout;
              },
            )),
      );
    } else {
      return _multipleDice(hasSound, topPadding, itemWidth, itemHeight);
    }
  }

  Padding _multipleDice(
      bool hasSound, double topPadding, double itemWidth, double itemHeight) {
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
            hasSound: hasSound,
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

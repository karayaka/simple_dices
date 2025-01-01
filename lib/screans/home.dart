import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:simple_dices/components/home_card.dart';
import 'package:simple_dices/screans/app_list_page.dart';
import 'package:simple_dices/screans/dices.dart';
import 'package:simple_dices/utiliys/ad_helper.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  BannerAd? bannerAd;
  @override
  void initState() {
    super.initState();
    BannerAd(
            size: AdSize.banner,
            adUnitId: AdHelper.homeBannerAdUnitId,
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
    if (bannerAd != null) {
      bannerAd!.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("choose_number_of_dice".tr),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const AppListPage(),
                  ),
                );
              },
              icon: const Icon(Icons.info))
        ],
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
      body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Dices(
                        diceCount: (1),
                      ),
                    ),
                  );
                },
                child: HomeCard(
                  title: "one".tr,
                  subtitle: "one_dice".tr,
                  color: Colors.deepOrange,
                  count: 0,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Dices(
                        diceCount: (2),
                      ),
                    ),
                  );
                },
                child: HomeCard(
                  title: "two".tr,
                  subtitle: "two_dice".tr,
                  color: Colors.orange,
                  count: 1,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Dices(
                        diceCount: (3),
                      ),
                    ),
                  );
                },
                child: HomeCard(
                  title: "three".tr,
                  subtitle: "three_dice".tr,
                  color: Colors.orangeAccent,
                  count: 2,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Dices(
                        diceCount: (4),
                      ),
                    ),
                  );
                },
                child: HomeCard(
                  title: "four".tr,
                  subtitle: "four_dice".tr,
                  color: Colors.amber,
                  count: 3,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Dices(
                        diceCount: (5),
                      ),
                    ),
                  );
                },
                child: HomeCard(
                  title: "five".tr,
                  subtitle: "five_dice".tr,
                  color: Colors.deepOrangeAccent,
                  count: 4,
                ),
              ),
            ],
          )),
    );
  }
}

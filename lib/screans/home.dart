import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:simple_dices/components/home_card.dart';
import 'package:simple_dices/screans/dices.dart';
import 'package:simple_dices/utiliys/utilit.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("choose_number_of_dice".tr),
      ),
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

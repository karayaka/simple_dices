import 'package:flutter/material.dart';
import 'package:get/utils.dart';
import 'package:simple_dices/screans/dices.dart';

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
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Her satırda 3 tuş
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1.0, // Kare şeklinde düğmeler
              ),
              itemCount: 5,
              itemBuilder: (context, i) {
                return ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Dices(
                          diceCount: (i + 1),
                        ),
                      ),
                    );
                  },
                  child: Text(
                    '${i + 1}${" "}${"dice".tr}',
                    style: const TextStyle(fontSize: 24),
                  ),
                );
              },
            ),
            Container(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}

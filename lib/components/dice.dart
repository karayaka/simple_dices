import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class Dice extends StatefulWidget {
  final Function(int cout)? rolled;
  const Dice({super.key, this.rolled});

  @override
  State<Dice> createState() => DiceState();
}

class DiceState extends State<Dice> {
  Random random = Random();
  int currentImageIndex = 0;
  int counter = 1;
  List<String> images = [
    'assets/images/dice_1.png',
    'assets/images/dice_2.png',
    'assets/images/dice_3.png',
    'assets/images/dice_4.png',
    'assets/images/dice_5.png',
    'assets/images/dice_6.png',
  ];
  late AudioPlayer player;
  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(
          images[currentImageIndex],
          height: 100,
        ),
      ),
    );
  }

  rollIt() async {
    await player.setAsset('assets/audios/rolling-dice.mp3');
    player.play();
    Timer.periodic(const Duration(milliseconds: 80), (timer) {
      counter++;
      setState(() {
        currentImageIndex = random.nextInt(6);
      });

      if (counter >= 13) {
        timer.cancel();
        widget.rolled!(currentImageIndex + 1);
        setState(() {
          counter = 1;
        });
      }
    });
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}

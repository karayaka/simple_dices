import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:simple_dices/utiliys/utilit.dart';

class Dice extends StatefulWidget {
  final Function(int cout)? rolled;
  final bool hasSound;
  const Dice({super.key, this.hasSound = true, this.rolled});

  @override
  State<Dice> createState() => DiceState();
}

class DiceState extends State<Dice> {
  Random random = Random();
  int currentImageIndex = 0;
  int counter = 1;
  late final AudioPlayer player;
  @override
  void initState() {
    player = AudioPlayer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2.5),
            borderRadius: BorderRadius.circular(15)),
        child: Image.asset(
          Utilit.getImages()[currentImageIndex],
          height: 100,
        ),
      ),
    );
  }

  Future<void> rollIt() async {
    if (widget.hasSound) {
      try {
        player.play(AssetSource('audios/rolling-dice.mp3'));
      } catch (e) {
        debugPrint("Audio error: $e");
      }
    }

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

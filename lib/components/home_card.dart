import 'package:flutter/material.dart';
import 'package:simple_dices/utiliys/utilit.dart';

class HomeCard extends StatelessWidget {
  int count;
  String title;
  String subtitle;
  Color color;

  HomeCard(
      {super.key,
      required this.count,
      required this.title,
      required this.subtitle,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        subtitle: Text(subtitle, style: const TextStyle(color: Colors.black)),
        trailing: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(5)),
          child: Image.asset(
            Utilit.getImages()[count],
            height: 100,
          ),
        ),
      ),
    );
  }
}

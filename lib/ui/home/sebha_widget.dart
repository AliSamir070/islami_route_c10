import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({Key? key}) : super(key: key);

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  List<String> tsabeh = [
    "سُبْحَانَ اللَّهِ",
    "سُبْحَانَ اللَّهِ وَبِحَمْدِهِ",
    "سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ",
    "لا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ ",
    "لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ.",
    "الْحَمْدُ للّهِ رَبِّ الْعَالَمِينَ",
    "الْلَّهُم صَلِّ وَسَلِم وَبَارِك عَلَى سَيِّدِنَا مُحَمَّد",
  ];
  int rotate = 0;
  int index_tsbeha = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Image.asset(
                    "assets/images/head_of_seb7a.png",
                    fit: BoxFit.fill,
                    height: 80,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(60),
                  child: RotatedBox(
                    quarterTurns: rotate,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (rotate == 33) {
                            if (index_tsbeha == tsabeh.length - 1) {
                              index_tsbeha = 0;
                            } else {
                              index_tsbeha++;
                            }
                            rotate = 0;
                          }
                          rotate++;
                          log("${index_tsbeha} and rotate $rotate");
                        });
                      },
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      child: Image.asset(
                        "assets/images/body_of_seb7a.png",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text("عدد التسبيحات", style: TextStyle(fontSize: 25)),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.secondary),
            child: Text("$rotate",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.primary),
            child: Text(
              "${tsabeh[index_tsbeha]}",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}

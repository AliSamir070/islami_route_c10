import 'dart:async';

import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/home/custom_text.dart';

class SebhaWidget extends StatefulWidget {
  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  double animatedTurn = 0;
  int tsbehaCounter = 0;
  int doaaListIndex = 0;

  List<String> doaa = [
    'سبحان الله',
    "الحمد الله",
    'الله اكبر',
    'استغفر الله',
  ];

  void oneTsbehaFinshed() {
    setState(() {
      tsbehaCounter = 0;
      doaaListIndex++;
    });
  }

  void sebhaLogic() {
    setState(() {
      animatedTurn += 1 / 34;
      tsbehaCounter++;
      if (tsbehaCounter == 34) {
        oneTsbehaFinshed();
      }
      if (doaaListIndex == doaa.length) {
        doaaListIndex = 0;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 0), () {
        showAlertMessage(context);
      });
    });
  }

  void showAlertMessage(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Sebha'),
          content: const Text('Click on sebha or on doaa to start tsbeh'),
          actions: [
            ElevatedButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: -210,
                right: 25,
                left: 30,
                child: Image.asset(
                  'assets/images/head_of_seb7a.png',
                ),
              ),
              Positioned(
                top: 70,
                child: GestureDetector(
                  onTap: () {
                    sebhaLogic();
                  },
                  child: AnimatedRotation(
                    turns: animatedTurn,
                    duration: const Duration(seconds: 1),
                    child: Image.asset(
                      'assets/images/body_of_seb7a.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              const Text(
                'عدد التسبيحات',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor,
                ),
                child: CustomText(
                  textColor: Colors.black,
                  textTitle: tsbehaCounter.toString(),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor.withOpacity(0.57),
                ),
                child: TextButton(
                  onPressed: () {
                    sebhaLogic();
                  },
                  child: CustomText(
                    textColor: Colors.white,
                    textTitle: doaa[doaaListIndex],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

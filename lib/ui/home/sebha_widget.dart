import 'package:flutter/material.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({Key? key}) : super(key: key);

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  int sebhaCounter = 0;
  int sebhaListIndex = 0;
  double rotate = 0;
  List<String> Tsbeh = [
    'سبحان الله',
    "الحمدلله",
    'لا اله الا الله',
    'الله اكبر',
    'لا حول ولا قوه الا بالله'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          GestureDetector(
            onTap: onImageClicked,
            child: Transform.rotate(
              angle: rotate,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                      margin: const EdgeInsets.only(left: 40),
                      child: Image.asset(
                        'assets/images/head of seb7a.png',
                        height: 150,
                      )),
                  Container(
                      margin: const EdgeInsets.only(
                        top: 103,
                      ),
                      child: Image.asset('assets/images/body of seb7a.png')),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          const Text(
            'عدد التسبيحات',
            style: TextStyle(fontSize: 22),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary),
            child: Text(
              '$sebhaCounter',
              style: const TextStyle(fontSize: 22),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.primary),
            child: Text(
              Tsbeh[sebhaListIndex],
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }

  void onImageClicked() {
    setState(() {
      rotate += 0.190;
      sebhaCounter++;

      if (sebhaCounter == 33) {
        sebhaCounter = 0;
        sebhaListIndex++;
        sebhaListIndex = sebhaListIndex % 5;
      }
    });
  }
}
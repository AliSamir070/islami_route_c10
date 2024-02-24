import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  static const String routeName = "RotatingImageWidget";

  const SebhaScreen({super.key});
  @override
  SebhaScreenState createState() => SebhaScreenState();
}

class SebhaScreenState extends State<SebhaScreen> {
  final List<String> tasbeehat = ['سبحان الله','الحمدلله','الله أكبر'];
  int tasbehIndex = 0;
  int counter = 0;
  bool isDone = false;
  double rotationValue = 0;

  void sebhaRotation() {
    setState(() {
      rotationValue += 33.0;
      counter++;
      if(counter%33 == 0) {
        isDone = true;
      }else{
        isDone = false;
      }
      if(isDone){
        tasbehIndex = (tasbehIndex + 1) % tasbeehat.length;
        counter = 0;
        if(tasbehIndex == 0){
          rotationValue = 0.0;
        }
      }
    });
  }
  String tasbehaLocator() {
    return tasbeehat[tasbehIndex];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset(
                "assets/images/2x/head_sebha_logo@2x.png",
                fit: BoxFit.contain,
              ),
              Container(
                margin: const EdgeInsets.only(top: 72),
                child: GestureDetector(
                  onTap: sebhaRotation,
                  child: Transform.rotate(
                    angle: rotationValue * (0.017),
                    child: Image.asset(
                      'assets/images/2x/the.png',
                      fit: BoxFit.contain,
                      width: MediaQuery.of(context).size.width * 0.8,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 35,bottom: 15),
            child: const Center(
              child: Text(
                'عدد التسبيحات',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Container(
              width: 100,
              height: 50,
              decoration: BoxDecoration(
                color: const Color(0xffc9b495),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text('$counter', style: const TextStyle(
                    fontSize: 24, color: Colors.black),),),
            ),),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xffb8945a),
                borderRadius: BorderRadius.circular(50)
            ),
            margin: const EdgeInsets.only(bottom: 40,left: 110,right: 110),
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Text(
                tasbehaLocator(),
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                  // backgroundColor: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
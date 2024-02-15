import 'package:flutter/material.dart';

class SebhaWidget extends StatefulWidget {

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}


class _SebhaWidgetState extends State<SebhaWidget> {
  double turns = 0.0;
  List<String> sebhaList = ["سبحان الله","الحمدلله","لا اله الا الله","الله اكبر","استغفر الله"];
  int sebhaNumber = 0;
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  padding: EdgeInsets.only(bottom: 290,left: 70),
                  child: Image.asset("assets/images/head_sebha_logo.png")
              ),
              AnimatedRotation(
                turns: turns,
                duration: Duration(milliseconds: 80),
                child: InkWell(
                    borderRadius: BorderRadius.circular(100),
                    onTap: () {
                      setState(() {
                        turns+= (1/30);
                        sebhaTextChange();
                      });
                    },
                    child: Image.asset("assets/images/body_sebha_logo.png")
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Text("عدد التسبيحات",style: TextStyle(
                  fontSize: 26,

                ),),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                height: 50,
                width: 70,
                decoration: BoxDecoration(
                  color: Color(0x76b7935f),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("${sebhaNumber}",style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text("${sebhaList[counter]}",style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                ),),
              )
            ],
          )
        ],
      ),
    );
  }

  void sebhaTextChange(){
    sebhaNumber++;
    if(sebhaNumber == 33){
      sebhaNumber = 0;
      if(counter == (sebhaList.length-1)){
        counter = 0;
      }
      else{
        counter++;
      }
    }
    setState(() {

    });
  }
}

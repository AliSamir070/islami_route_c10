import 'package:flutter/material.dart';

class SebhaWidget extends StatefulWidget {
  const SebhaWidget({Key? key}) : super(key: key);

  @override
  State<SebhaWidget> createState() => _SebhaWidgetState();
}

class _SebhaWidgetState extends State<SebhaWidget> {
  @override
  int counter=0;
  int currentindex=0;
  double turn=0.0;
  List<String> namess=["سبحان الله","اللة واكبر ","لا الة الا الله","الحمد لله"];
  Widget build(BuildContext context) {

    return Center(
      child: Column(children: [
       GestureDetector(onTap:  (){
         setState(() {
           turn+=1/34;

           counter++;
           if(counter== 34){
             repeatt();
           }
           if(currentindex==namess.length){
             currentindex=0;

           }
         });

       },child:Stack(
         alignment: Alignment.topCenter,
         children: [
           Container(margin: EdgeInsets.only(left: 40,top: 18),
               child: Image(image: AssetImage("assets/images/head of seb7a.png"),fit: BoxFit.fill,)),

           Container(padding: EdgeInsets.only(top: 100,),

             child:  AnimatedRotation(turns:turn ,duration: Duration(seconds: 1),
               child:Image(image: AssetImage("assets/images/body of seb7a.png"),fit: BoxFit.fill) ,)
             ,),

         ],) ,)
        ,

            SizedBox(height:10 ,),

        Container(child:Text("عدد التسبيحات",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),),),

        Container(margin: EdgeInsets.only(top: 10,bottom: 5),
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
           decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
             borderRadius: BorderRadius.circular(20), ),
          child:
          Text("$counter",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600 ),),),


        Container(margin: EdgeInsets.only(top: 10,bottom: 5),
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(20), ),
          child:GestureDetector(onTap: (){
            setState(() {
              turn+=1/34;

              counter++;
              if(counter== 34){
                repeatt();
              }
              if(currentindex==namess.length){
                currentindex=0;

              }
            });

          },child:Text("${namess[currentindex]}",
            style: TextStyle(fontSize:20,
                fontWeight: FontWeight.w600 ,color: Colors.white),),) ,)


      ],),
    );

  }
  void repeatt(){
    setState(() {
      counter=0;
      currentindex++;
    });
  }
}

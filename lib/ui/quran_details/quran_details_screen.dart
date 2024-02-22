import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app_c10/style/theme.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context){
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if(lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  AppTheme.isdark?"assets/images/darkbackground.png":"assets/images/bg3.png"),
              fit: BoxFit.fill
          )
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Card(
          color: Theme.of(context).cardTheme.color,
          margin: EdgeInsets.all(20),
          elevation: 20,
          child: lines.isNotEmpty
              ?ListView.separated(
              itemBuilder: (context,index)=>Text(
                "${lines[index]} (${index+1})",
                textDirection: TextDirection.rtl,
                style:    Theme.of(context).textTheme.bodyMedium ,
              ),
              separatorBuilder: (context,index)=>Container(
                height: 2,
                color:Theme.of(context).primaryColor
              ),
              itemCount: lines.length)
              :Center(child: CircularProgressIndicator(),),
        ),
      ),
    );
  }

  List<String> lines = [];

  void readQuranFile(int index)async{
    String quran = await rootBundle.loadString("assets/files/${index+1}.txt");
    lines = quran.split("\n");
    print(quran);
    setState(() {

    });

  }
}

class QuranDetailsArgs{
  String title;
  int index;
  QuranDetailsArgs(this.title,this.index);
}
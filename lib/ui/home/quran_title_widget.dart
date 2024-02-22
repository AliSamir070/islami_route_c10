import 'package:flutter/material.dart';
import 'package:islamy_app_c10/ui/quran_details/quran_details_screen.dart';

class QuranTitleWidget extends StatelessWidget {
  String title;
  String versesNumber;
  int index;
  QuranTitleWidget({Key? key,required this.versesNumber,required this.title,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, QuranDetailsScreen.routeName,arguments: QuranDetailsArgs(title, index));
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,style: Theme.of(context).textTheme.labelSmall,),
          Text(versesNumber,style: Theme.of(context).textTheme.labelSmall),
        ],
      ),
    );
  }
}

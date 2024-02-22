import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class themeSheet extends StatefulWidget {

  @override
  State<themeSheet> createState() => _themeSheetState();
}

class _themeSheetState extends State<themeSheet> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          selected('Lights'),
          SizedBox(height: 10,),
          unselected('Dark'),
        ],
      ),
    );
  }

  Widget selected(String selectedTheme) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Text(selectedTheme,
          style: TextStyle(
              fontSize: 20,
              color: Theme.of(context).dividerColor),),
        Icon(Icons.check,color:  Theme.of(context).dividerColor ,)
      ],
    );
  }

  Widget unselected(String unSelectedtheme) {
    return Row(
      children: [
        Text(unSelectedtheme,style: TextStyle(
          fontSize: 15,
          color: Theme.of(context).colorScheme.onSecondary,
        ),),
      ],
    );
  }
}

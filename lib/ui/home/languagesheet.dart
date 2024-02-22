import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class languageSheet extends StatefulWidget {
  const languageSheet({super.key});

  @override
  State<languageSheet> createState() => _languageSheetState();
}

class _languageSheetState extends State<languageSheet> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          selected('English'),
          SizedBox(height: 10,),
          unselected('Arby'),
        ],
      ),
    );
  }

  Widget selected(String selectedlanguage) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(selectedlanguage,
          style: TextStyle(
            fontSize: 20,
              color: Theme.of(context).dividerColor),),
        Icon(Icons.check,color: Theme.of(context).dividerColor,)
      ],
    );
  }

  Widget unselected(String unSelectedLanguage) {
    return Row(
      children: [
        Text(unSelectedLanguage,style: TextStyle(
          fontSize: 15,
          color: Theme.of(context).colorScheme.onSecondary,
        ),),
      ],
    );
  }
}

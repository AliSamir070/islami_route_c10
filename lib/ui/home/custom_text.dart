import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  Color textColor;
  String textTitle;
 CustomText({
   super.key,

   required this.textColor,
   required this.textTitle,
 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        textTitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}

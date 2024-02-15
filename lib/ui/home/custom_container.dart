import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  Color borderColor;
  Color textColor;
  String textTitle;
 CustomContainer({
   super.key,
   required this.borderColor,
   required this.textColor,
   required this.textTitle,
 });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: borderColor,
      ),
      child:  Padding(
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
      ),
    );
  }
}

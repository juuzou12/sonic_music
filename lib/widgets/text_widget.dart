import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget{
  final String value;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextDecoration?  decoration;

  const TextWidget(
      {Key? key,
        required this.value,
        required this.fontSize,
        required this.fontWeight,
        required this.color,
        required this.textAlign,
        this.decoration})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }

}
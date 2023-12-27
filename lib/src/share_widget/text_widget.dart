import 'package:flutter/material.dart';

Text TextWidget(
  String text, {
  double fontSize = 14,
  FontWeight weight = FontWeight.normal,
  Color? color,
  String fontName = 'notosan',
  TextAlign align = TextAlign.left,
  TextOverflow? overflow,
  int? maxlix,
}) {
  // color ??= Colors.black;
  return Text(
    text,
    textAlign: align,
    maxLines: maxlix,
    overflow: overflow ?? TextOverflow.ellipsis,
    style: TextStyle(
        fontSize: fontSize,
        color: color,
        fontWeight: weight,
        fontFamily: fontName),
  );
}

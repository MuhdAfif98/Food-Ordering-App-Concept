import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double defaultSizedBox = 15;

TextStyle textStyleNormal(double size) {
  return TextStyle(
    color: Colors.black,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.normal,
    fontSize: size,
  );
}

TextStyle textStyleSemiBold(double size) {
  return TextStyle(
    color: Colors.black,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500,
    fontSize: size,
  );
}

TextStyle textStyleBold(double size) {
  return TextStyle(
    color: Colors.black,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w900,
    fontSize: size,
  );
}

BoxShadow shadowList() {
  return BoxShadow(
      blurRadius: 4,
      spreadRadius: 0,
      color: Colors.black.withOpacity(0.3),
      offset: const Offset(0, 4));
}
